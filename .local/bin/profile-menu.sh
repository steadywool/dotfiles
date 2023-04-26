#!/bin/bash

var+=('󰾆 power-saver')
var+=('󰾅 balanced')
var+=('󰓅 performance')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 3 --index)

case ${CHOICE} in
    0)
        powerprofilesctl set power-saver
    ;;
    1)
        powerprofilesctl set balanced
    ;;
    2)
        powerprofilesctl set performance
    ;;
esac
