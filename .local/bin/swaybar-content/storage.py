from psutil import disk_usage
from psutil._common import bytes2human
from time import sleep


def storage(informations, lock):
    while True:
        root_disk = bytes2human(disk_usage('/').free)
        home_disk = bytes2human(disk_usage('/home/kani').free)

        lock.acquire()
        informations[2] = root_disk
        informations[3] = home_disk
        lock.release()
        sleep(5)
