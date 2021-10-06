#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i --fn 'Fira Code Regular 9' --tb='#181818' --tf='#d8d8d8' --fb='#181818' --nb='#181818' --nf='#d8d8d8' --hb='#181818' --hf='#ab4642' -p 'power ')


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
    swaylock -f -c 282828
fi

if [ "$CHOICE" = "exit sway" ]; then
    swaymsg exit
fi
