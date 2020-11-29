#!/bin/bash

var+=("select")
var+=("screen")
var+=("delay 10s")

CHOICE=$(printf '%s\n' "${var[@]}" | rofi -dmenu -config ~/.config/rofi/config.rasi -p "scrot " )

if [ "$CHOICE" = "select" ]; then
	scrot -s -e 'mv $f ~/Pictures/' && notify-send "Scrot" "Saved in $HOME/Pictures"
fi

if [ "$CHOICE" = "screen" ]; then
	scrot -e 'mv $f ~/Pictures/' && notify-send "Scrot" "Saved in $HOME/Pictures"
fi

if [ "$CHOICE" = "screen" ]; then
	scrot -d 10 -e 'mv $f ~/Pictures/' && notify-send "Scrot" "Saved in $HOME/Pictures"
fi
