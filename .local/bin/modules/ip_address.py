from socket import gethostname, gethostbyname
from time import sleep


def ip_address(informations, lock):
    while True:
        ip_address = gethostbyname(gethostname())

        lock.acquire()
        informations[4] = ip_address
        lock.release()
        sleep(5)
