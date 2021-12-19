#!/bin/bash

var+=("all")
var+=("current_output")
var+=("current_window")
var+=("area")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i -H '20' --fn 'Fira Code Regular 9' --tb='#202023' --tf='#c5cdd9' --fb='#202023' --nb='#202023' --nf='#c5cdd9' --hb='#202023' --hf='#ec7279' -p 'screenshot ')

# Screenshot of every screen with grim
if [ "$CHOICE" = "all" ]; then
    grim -t jpeg ~/Pictures/Screenshot/$(date +%Y-%m-%d_%H-%m-%s).jpg && notify-send "grim" "Saved in $HOME/Pictures/Screenshot"

# Screenshot of current output with grim & jq
elif [ "$CHOICE" = "current_output" ]; then
    grim -t jpeg -o "$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')" \
        ~/Pictures/Screenshot/$(date +%Y-%m-%d_%H-%m-%s).jpg && notify-send "grim+jq" "Saved in $HOME/Pictures/Screenshot"

# Screenshot of current window with grim & jq
elif [ "$CHOICE" = "current_window" ]; then
    grim -t jpeg -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" \
        ~/Pictures/Screenshot/$(date +%Y-%m-%d_%H-%m-%s).jpg && notify-send "grim+jq" "Saved in $HOME/Pictures/Screenshot"

# Screenshot of selected area
elif [ "$CHOICE" = "area" ]; then
    grim -t jpeg -g "$(slurp)" ~/Pictures/Screenshot/$(date +%Y-%m-%d_%H-%m-%s).jpg && notify-send "grim+slurp" "Saved in $HOME/Pictures/Screenshot"

fi
