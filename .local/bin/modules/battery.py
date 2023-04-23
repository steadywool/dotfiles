from psutil import sensors_battery
from time import sleep


def battery(informations, lock):
    while True:
        battery_capacity = str(int(sensors_battery().percent))
        battery_status_strings = ('↓', '↑')
        battery_status = battery_status_strings[sensors_battery().power_plugged]

        lock.acquire()
        informations[9] = battery_capacity
        informations[10] = battery_status
        lock.release()
        sleep(5)
