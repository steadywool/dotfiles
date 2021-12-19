#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i -H '20' --fn 'Fira Code Regular 9' --tb='#202023' --tf='#c5cdd9' --fb='#202023' --nb='#202023' --nf='#c5cdd9' --hb='#202023' --hf='#ec7279' -p 'power ')

if [ "$CHOICE" = "power off" ]; then
    shutdown -h now

elif [ "$CHOICE" = "reboot" ]; then
    reboot

elif [ "$CHOICE" = "suspend" ]; then
    systemctl suspend

elif [ "$CHOICE" = "lock" ]; then
    swaylock -f -c 2c2e34

elif [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
