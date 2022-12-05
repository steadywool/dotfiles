#!/bin/bash

var+=('⏻ power-off')
var+=('勒 reboot')
var+=('⏾ hibernate')
var+=('⏾ hybrid-sleep')
var+=('⏾ suspend')
var+=(' lock')
var+=(' exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 7)

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

    '⏾ hybrid-sleep')
        systemctl hybrid-sleep
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
