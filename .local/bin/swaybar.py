#!/bin/python3

from datetime import datetime
from socket import gethostname, gethostbyname
from psutil import disk_usage, sensors_battery
from psutil._common import bytes2human
from subprocess import check_output
from sys import stdout
from time import sleep

def status():
    # Curent time
    date = datetime.now().strftime('%Y-%m-%d %H:%M')

    # Ip address
    ip_address = gethostbyname(gethostname())

    # Brightness
    brightness = check_output('light -G', shell=True).strip().decode("utf-8")

    # Battery
    battery_capacity = int(sensors_battery().percent)
    battery_status = '↑' if sensors_battery().power_plugged else '↓'

    # Storage
    root_disk = bytes2human(disk_usage('/').free)
    home_disk = bytes2human(disk_usage('/home/kani').free)

    # Source volume
    mute = check_output("wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
    if mute == '':
        source_volume = check_output("wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $2}'", shell=True ).strip().decode("utf-8")
    else:
        source_volume = 'Mute'

    # Sink volume
    mute = check_output("wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
    if mute == '':
        sink_volume = check_output("wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}'", shell=True ).strip().decode("utf-8")
    else:
        sink_volume = 'Mute'

    # Taskwarrior
    overdue_task = check_output("task +OVERDUE count", shell=True ).strip().decode("utf-8")
    pending_task = check_output("task +PENDING count", shell=True ).strip().decode("utf-8")

    # Send all data to stdout
    format = "[ !%s/%s] [ %s] [ %s] [ %s%%] [󰛳 %s] [ %s] [ %s] [ %s%% %s] [ %s]"
    stdout.write(format % (overdue_task, pending_task, root_disk, home_disk, brightness, ip_address, source_volume, sink_volume, battery_capacity, battery_status, date))
    stdout.flush()

while True:
    status()
    sleep(1)
