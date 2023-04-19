from datetime import datetime
from time import sleep


def date(informations, lock):
    while True:
        current_date = datetime.now().strftime('%F %R')

        lock.acquire()
        informations[9] = current_date
        lock.release()
        sleep(2)
