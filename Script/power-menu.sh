#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i -H '21' --fn 'Hack Regular 9' --tb='#131619' --tf='#d8dee9' --fb='#131619' --nb='#131619' --nf='#d8dee9' --hb='#131619' --hf='#bf616a' -p 'power ')

if [ "$CHOICE" = "power off" ]; then
    shutdown -h now

elif [ "$CHOICE" = "reboot" ]; then
    reboot

elif [ "$CHOICE" = "suspend" ]; then
    systemctl suspend

elif [ "$CHOICE" = "lock" ]; then
    swaylock -f -c 2e3440

elif [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
