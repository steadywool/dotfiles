from subprocess import check_output
from time import sleep


def source_volume(informations, lock):
    while True:
        mute = check_output("wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
        if mute == '':
            audio_source = check_output("wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $2}'", shell=True).strip().decode("utf-8")
        else:
            audio_source = 'Mute'

        lock.acquire()
        informations[5] = audio_source
        lock.release()
        sleep(1)


def sink_volume(informations, lock):
    while True:
        mute = check_output("wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}'", shell=True).strip().decode("utf-8")
        if mute == '':
            audio_sink = check_output("wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}'", shell=True).strip().decode("utf-8")
        else:
            audio_sink = 'Mute'

        lock.acquire()
        informations[6] = audio_sink
        lock.release()
        sleep(1)
