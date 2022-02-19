#!/bin/bash

SCREENSHOT=$HOME/Pictures/Screenshot

var+=("all")
var+=("output")
var+=("window")
var+=("area")

var+=("copy-all")
var+=("copy-output")
var+=("copy-window")
var+=("copy-area")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -p 'screenshot ')

output=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')
window=$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')

# Create screenshot folder if there is none
if [[ ! -d $SCREENSHOT ]]; then
    mkdir -p $SCREENSHOT
fi

# Screenshot of every outputs
if [[ CHOICE = "all" ]]; then
    grim $SCREENSHOT/$(date +%d-%m-%Y_%H-%M-%S).jpg \
    && notify-send --urgency=low "Saved in $SCREENSHOT"

# Screenshot of current output
elif [[ $CHOICE = "output" ]]; then
    grim -o "$output" $SCREENSHOT/$(date +%d-%m-%Y_%H-%M-%S).jpg \
    && notify-send --urgency=low "Saved in $SCREENSHOT"

# Screenshot of current window
elif [[ $CHOICE = "window" ]]; then
    grim -g "$window" $SCREENSHOT/$(date +%d-%m-%Y_%H-%M-%S).jpg \
    && notify-send --urgency=low "Saved in $SCREENSHOT"

# Screenshot of selected area
elif [[ $CHOICE = "area" ]]; then
    grim -g "$(slurp)" $SCREENSHOT/$(date +%d-%m-%Y_%H-%M-%S).jpg \
    && notify-send --urgency=low "Saved in $SCREENSHOT"
fi

# Copy of every outputs
if [[ $CHOICE = "copy-all" ]]; then
    grim - | wl-copy \
    && notify-send --urgency=low "Saved in clipboard"

# Copy of current output
elif [[ $CHOICE = "copy-output" ]]; then
    grim -o "$output" - | wl-copy \
    && notify-send --urgency=low "Saved in clipboard"

# Copy of current window
elif [[ $CHOICE = "copy-window" ]]; then
    grim -g "$window" - | wl-copy \
    && notify-send --urgency=low "Saved in clipboard"

# Copy of selected area
elif [[ $CHOICE = "copy-area" ]]; then
    grim -g "$(slurp)" - | wl-copy \
    && notify-send --urgency=low "Saved in clipboard"
fi
