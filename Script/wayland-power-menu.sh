#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i --fn 'Anonymous Pro Minus 10' --tb='#181818' --tf='#d8d8d8' --fb='#181818' --nb='#181818' --nf='#d8d8d8' --hb='#181818' --hf='#ab4642' -p 'power ')


if [ "$CHOICE" = "power off" ]; then
	shutdown -h now
fi

if [ "$CHOICE" = "reboot" ]; then
	reboot
fi

if [ "$CHOICE" = "lock" ]; then
	swaylock -c fabd2f
fi

if [ "$CHOICE" = "exit sway" ]; then
	swaymsg exit
fi
