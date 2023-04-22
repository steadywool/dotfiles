#!/bin/python3

from sys import stdout
from time import sleep
from threading import Lock, Thread

from modules.date import date
from modules.battery import battery
from modules.volume import source_volume, sink_volume
from modules.data_rate import data_rate
from modules.brightness import brightness
from modules.storage import storage
from modules.scratchpad import scratchpad


# Print informations
def print_informations(informations, lock):
    while True:
        lock.acquire()
        format = "[ %s] [ %s] [ %s] [ %s%%] [ %s  %s] [ %s] [ %s] [ %s%% %s] [ %s]"
        stdout.write(format % tuple(informations))
        stdout.flush()
        lock.release()
        sleep(0.5)


# Create threads automatically
def create_threads(informations, lock, functions):
    threads = []

    # Create threads
    for f in functions:
        thread = Thread(target=f, args=(informations, lock))
        thread.start()
        threads.append(thread)

    # Stop threads
    for t in threads:
        t.join()


# Main function
def main():
    functions = [scratchpad, storage, brightness, data_rate, sink_volume, source_volume, battery, date]
    functions.append(print_informations)

    # Edit this number if you add modules
    informations = ['-'] * 11
    lock = Lock()

    # Run create_threads function
    create_threads(informations, lock, functions)


# Run the main function
if __name__ == "__main__":
    main()
