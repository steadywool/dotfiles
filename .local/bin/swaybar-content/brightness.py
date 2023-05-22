from time import sleep


def brightness(informations, lock):
    while True:
        with open('/sys/class/backlight/intel_backlight/max_brightness', 'r') as f:
            max_brightness = int(f.read().strip())

        with open('/sys/class/backlight/intel_backlight/brightness', 'r') as f:
            current_brightness = int(f.read().strip())

        human_brightness = str(round(current_brightness / max_brightness * 100))

        lock.acquire()
        informations[4] = human_brightness
        lock.release()
        sleep(2)
