#!/bin/bash

var+=("us")
var+=("fr")

CHOICE=$(printf '%s\n' "${var[@]}" | rofi -dmenu -config ~/.config/rofi/config.rasi -p "keybinding " )

if [ "$CHOICE" = "us" ]; then
	setxkbmap us
fi

if [ "$CHOICE" = "fr" ]; then
	setxkbmap fr
fi


