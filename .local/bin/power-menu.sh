#!/bin/bash

var+=('⏻ power-off')
var+=('勒 reboot')
var+=('⏾ suspend')
var+=(' lock')
var+=(' exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 5)

case ${CHOICE} in

    '⏻ power-off')
        shutdown -h now
    ;;

    '勒 reboot')
        shutdown -r now
    ;;

    '⏾ suspend')
        systemctl suspend
    ;;

    ' lock')
        swaylock
    ;;

    ' exit-sway')
        swaymsg exit
    ;;
esac
