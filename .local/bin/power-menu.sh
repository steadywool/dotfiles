#!/bin/bash

var+=('⏻ power-off')
var+=('勒 reboot')
var+=('⏾ hibernate')
var+=('⏾ suspend')
var+=(' lock')
var+=(' exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 6)

case ${CHOICE} in

    '⏻ power-off')
        shutdown -h now
    ;;

    '勒 reboot')
        shutdown -r now
    ;;

    '⏾ hibernate')
        systemctl hibernate
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
