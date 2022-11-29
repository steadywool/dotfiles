#!/bin/bash

var+=('power-off')
var+=('reboot')
var+=('hibernate')
var+=('hybrid-sleep')
var+=('suspend')
var+=('lock')
var+=('exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d)

case ${CHOICE} in

    'power-off')
        shutdown -h now
    ;;

    'reboot')
        shutdown -r now
    ;;

    'hibernate')
        systemctl hibernate
    ;;

    'hybrid-sleep')
        systemctl hybrid-sleep
    ;;

    'suspend')
        systemctl suspend
    ;;

    'lock')
        swaylock
    ;;

    'exit-sway')
        swaymsg exit
    ;;
esac
