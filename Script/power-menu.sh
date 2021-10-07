#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i --fn 'Fira Code Regular 9' --tb='#2e3440' --tf='#d8dee9' --fb='#2e3440' --nb='#2e3440' --nf='#d8dee9' --hb='#2e3440' --hf='#bf616a' -p 'power ')


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
    swaylock -f -c 4c566a
fi

if [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
