#!/bin/bash

power_var+=('⏻ power-off')
power_var+=('󰑓 reboot')
power_var+=('⏾ suspend')
power_var+=(' profile')
power_var+=(' lock')
power_var+=('󰗼 exit-session')

CHOICE=$(printf '%s\n' ${power_var[@]} | fuzzel -d -w 20 -l 6 --index)

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
        swaymsg exit
    ;;
esac
