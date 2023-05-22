#!/bin/python3

from sys import stdout
from time import sleep
from threading import Lock, Thread

from date import date
from battery import battery
from volume import source_volume, sink_volume
from data_rate import data_rate
from brightness import brightness
from storage import storage
from scratchpad import scratchpad
from power_profile import power_profile


# Print informations
def print_informations(informations, lock):
    while True:
        lock.acquire()
        format = "[ %s] [ %s] [ %s] [ %s] [󰃞 %s%%] [ %s  %s] [ %s] [ %s] [󰁹 %s%% %s] [ %s]"
        stdout.write(format % tuple(informations))
        stdout.flush()
        lock.release()
        sleep(1)


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
    # Functions
    functions = [scratchpad, power_profile, storage, brightness, data_rate, sink_volume, source_volume, battery, date]
    functions.append(print_informations)

    # Variables
    informations = ['-'] * (11 + 1)
    lock = Lock()

    # Run create_threads function
    create_threads(informations, lock, functions)


# Run the main function
if __name__ == "__main__":
    main()
