#!/bin/bash

var+=('power-off')
var+=('reboot')
var+=('hibernate')
var+=('hybrid-sleep')
var+=('suspend')
var+=('lock')
var+=('exit-sway')

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -p 'power ')

case $CHOICE in

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
        swaylock -e -u -f -c 83a598
    ;;

    'exit-sway')
        swaymsg exit
    ;;
esac
