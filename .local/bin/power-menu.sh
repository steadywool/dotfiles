#!/bin/bash

var+=('⏻ power-off')
var+=('󰑓 reboot')
var+=('⏾ suspend')
var+=(' lock')
var+=('󰗼 exit-session')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 5 --index)

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
        loginctl lock-session
    ;;
    4)
        loginctl terminate-session ${XDG_SESSION_ID}
    ;;
esac
