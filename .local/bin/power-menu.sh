#!/bin/bash

var+=('⏻ power-off')
var+=('勒 reboot')
var+=('⏾ suspend')
var+=(' lock')
var+=(' exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 5 --index)

case ${CHOICE} in
    0)
        shutdown -h now
    ;;
    1)
        shutdown -r now
    ;;
    2)
        systemctl suspend
    ;;
    3)
        swaylock
    ;;
    4)
        swaymsg exit
    ;;
esac
