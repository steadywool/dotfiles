#!/bin/python3

from datetime import datetime
from psutil import disk_usage, sensors_battery, net_io_counters
from psutil._common import bytes2human
from subprocess import check_output
from sys import stdout
from time import sleep
from i3ipc import Connection


def status():
    # Curent time
    date = datetime.now().strftime('%Y-%m-%d %H:%M')

    # Data rate
    def data_rate():
        old_value = net_io_counters()
        sleep(0.5)
        new_value = net_io_counters()
        incoming_data = '{:.2f} Mb/s'.format(((new_value.bytes_recv - old_value.bytes_recv) / 125000.0) * 2)
        outgoing_data = '{:.2f} Mb/s'.format(((new_value.bytes_sent - old_value.bytes_sent) / 125000.0) * 2)
        return incoming_data, outgoing_data

    # Brightness
    def brightness():
        max_brightness = check_output(
            'brightnessctl max', shell=True).strip().decode("utf-8")
        current_brightness = check_output(
            'brightnessctl get', shell=True).strip().decode("utf-8")
        return round(int(current_brightness) / int(max_brightness) * 100)

    # Battery
    battery_capacity = int(sensors_battery().percent)
    battery_status = '↑' if sensors_battery().power_plugged else '↓'

    # Storage
    root_disk = bytes2human(disk_usage('/').free)
    home_disk = bytes2human(disk_usage('/home/kani').free)

    # Source volume
    def source_volume():
        mute = check_output(
            "wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
        if mute == '':
            return check_output("wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $2}'", shell=True).strip().decode("utf-8")
        else:
            return 'Mute'

    # Sink volume
    def sink_volume():
        mute = check_output(
            "wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
        if mute == '':
            return check_output("wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}'", shell=True).strip().decode("utf-8")
        else:
            return 'Mute'

    # Taskwarrior
    overdue_task = check_output(
        "task +OVERDUE count", shell=True).strip().decode("utf-8")
    pending_task = check_output(
        "task +PENDING count", shell=True).strip().decode("utf-8")

    # Scratchpad
    def num_scratchpad():
        sway_connection = Connection()
        scratchpad_nodes = sway_connection.get_tree().scratchpad().descendants()
        return len(scratchpad_nodes)

    # Send all data to stdout
    format = "[ %s] [ !%s/%s] [ %s] [ %s] [ %s%%] [ %s  %s] [ %s] [ %s] [ %s%% %s] [ %s]"
    values = (num_scratchpad(), overdue_task, pending_task, root_disk, home_disk, brightness(),
              data_rate()[0], data_rate()[1], source_volume(), sink_volume(), battery_capacity, battery_status, date)

    stdout.write(format % values)
    stdout.flush()


while True:
    status()
    sleep(1)
