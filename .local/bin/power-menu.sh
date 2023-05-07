#!/bin/bash

var+=('⏻ power-off')
var+=('󰑓 reboot')
var+=('⏾ suspend')
var+=(' profile')
var+=(' lock')
var+=('󰗼 exit-session')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 6 --index)

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
        ${HOME}/.local/bin/profile-menu.sh
    ;;
    4)
        loginctl lock-session
    ;;
    5)
        loginctl terminate-session ${XDG_SESSION_ID}
    ;;
esac
