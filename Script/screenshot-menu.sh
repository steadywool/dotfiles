#!/bin/bash

var+=("all")
var+=("current_output")
var+=("current_window")
var+=("area")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -i -H '21' --fn 'Hack Regular 9' --tb='#131619' --tf='#d8dee9' --fb='#131619' --nb='#131619' --nf='#d8dee9' --hb='#131619' --hf='#bf616a' -p 'screenshot ')

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
