#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i --fn 'Fira Code Regular 9' --tb='#2c2e34' --tf='#c5cdd9' --fb='#2c2e34' --nb='#2c2e34' --nf='#c5cdd9' --hb='#2c2e34' --hf='#ec7279' -p 'power ')

if [ "$CHOICE" = "power off" ]; then
    shutdown -h now
fi

if [ "$CHOICE" = "reboot" ]; then
    reboot
fi

if [ "$CHOICE" = "suspend" ]; then
    systemctl suspend
fi

if [ "$CHOICE" = "lock" ]; then
    swaylock -f -c 181818
fi

if [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
