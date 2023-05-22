from i3ipc import Connection
from time import sleep


def scratchpad(informations, lock):
    while True:
        sway_connection = Connection()
        scratchpad_nodes = sway_connection.get_tree().scratchpad().descendants()
        lock.acquire()
        informations[0] = str(len(scratchpad_nodes))
        lock.release()
        sleep(2)
