#!/bin/bash

var+=('power-off')
var+=('reboot')
var+=('hibernate')
var+=('hybrid-sleep')
var+=('suspend')
var+=('lock')
var+=('exit-sway')

CHOICE=$(printf '%s\n' ${var[@]} | bemenu -p 'power ' -i -H '23' --fn 'JetBrains Mono Regular 9' --tb '#1d2021' --tf '#ebdbb2' --fb '#1d2021' --nb '#1d2021' --nf '#ebdbb2' --hb '#d3869b' --hf '#1d2021')

case ${CHOICE} in

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
        ${HOME}/.local/bin/lockscreen.sh
    ;;

    'exit-sway')
        swaymsg exit
    ;;
esac
