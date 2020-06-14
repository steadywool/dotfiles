#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("lock")
var+=("exit i3")

CHOICE=$(printf '%s\n' "${var[@]}" | rofi -dmenu -config ~/.config/rofi/config.rasi -p "Power-Menu:")

if [ "$CHOICE" = "power off" ]; then
	alacritty -e sudo shutdown -h now
fi

if [ "$CHOICE" = "reboot" ]; then
	alacritty -e sudo reboot
fi

if [ "$CHOICE" = "lock" ]; then
	i3lock -c 8ec07c -f -t -n
fi

if [ "$CHOICE" = "exit i3" ]; then
	i3-msg exit
fi


