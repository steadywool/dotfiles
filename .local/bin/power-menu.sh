#!/bin/bash

power_var+=('⏻ power-off')
power_var+=('勒 reboot')
power_var+=('⏾ suspend')
power_var+=(' profile')
power_var+=(' lock')
power_var+=(' exit-sway')

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
        swaylock -u -i "/home/kani/.local/share/backgrounds/blurred_wallpaper"
    ;;
    5)
        swaymsg exit
    ;;
esac

