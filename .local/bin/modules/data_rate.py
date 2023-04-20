from psutil import net_io_counters
from time import sleep


def get_data_rate():
    old_value = net_io_counters()
    sleep(1)
    new_value = net_io_counters()
    incoming_data = (new_value.bytes_recv - old_value.bytes_recv) / 1e6
    outgoing_data = (new_value.bytes_sent - old_value.bytes_sent) / 1e6

    return incoming_data, outgoing_data


def data_rate(informations, lock):
    while True:
        incoming_data, outgoing_data = get_data_rate()

        lock.acquire()
        informations[4] = round(incoming_data, 2)
        informations[5] = round(outgoing_data, 2)
        lock.release()
        sleep(1)
