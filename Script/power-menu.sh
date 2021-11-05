#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i --fn 'Fira Code Regular 9' --tb='#1d2021' --tf='#d4be98' --fb='#1d2021' --nb='#1d2021' --nf='#d4be98' --hb='#1d2021' --hf='#ea6962' -p 'power ')

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
    swaylock -f -c e78a4e
fi

if [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
