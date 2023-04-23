from subprocess import check_output
from time import sleep


def power_profile(informations, lock):
    while True:
        current_profile = check_output("powerprofilesctl get", shell=True).strip().decode("utf-8")

        lock.acquire()
        informations[1] = current_profile
        lock.release()
        sleep(5)
