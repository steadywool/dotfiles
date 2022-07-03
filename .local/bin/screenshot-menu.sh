#!/bin/bash

SCREENSHOT="${HOME}/Pictures/Screenshot"

var+=('save-all')
var+=('save-output')
var+=('save-window')
var+=('save-area')

var+=('copy-all')
var+=('copy-output')
var+=('copy-window')
var+=('copy-area')

CHOICE="$(printf '%s\n' ${var[@]} | bemenu -p 'screenshot ' -i -H '23' --fn 'JetBrains Mono Regular 9' --tb '#1d2021' --tf '#ebdbb2' --fb '#1d2021' --nb '#1d2021' --nf '#ebdbb2' --hb '#d3869b' --hf '#1d2021')"

output="$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')"
window="$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')"

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT} ]]; then
    mkdir -p ${SCREENSHOT}
fi

# Save screenshot
case ${CHOICE} in

    # Screenshot of every outputs
    'save-all')
        grim ${SCREENSHOT}/"$(date +%Y%m%d-%H%M%S_all)".jpg \
        && notify-send --urgency=low "Saved in ${SCREENSHOT}"
    ;;

    # Screenshot of current output
    'save-output')
        grim -o "${output}" ${SCREENSHOT}/"$(date +%Y%m%d-%H%M%S_output)".jpg \
        && notify-send --urgency=low "Saved in ${SCREENSHOT}"
    ;;

    # Screenshot of current window
    'save-window')
        grim -g "${window}" ${SCREENSHOT}/"$(date +%Y%m%d-%H%M%S_window)".jpg \
        && notify-send --urgency=low "Saved in $SCREENSHOT"
    ;;

    # Screenshot of selected area
    'save-area')
        grim -g "$(slurp)" ${SCREENSHOT}/"$(date +%Y%m%d-%H%M%S_area)".jpg \
        && notify-send --urgency=low "Saved in ${SCREENSHOT}"
    ;;
esac

# Copy screenshot to clipboard
case ${CHOICE} in

    # Copy of every outputs
    'copy-all')
        grim - | wl-copy \
        && notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of current output
    'copy-output')
        grim -o "${output}" - | wl-copy \
        && notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of current window
    'copy-window')
        grim -g "${window}" - | wl-copy \
        && notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of selected area
    'copy-area')
        grim -g "$(slurp)" - | wl-copy \
        && notify-send --urgency=low 'Saved in clipboard'
    ;;
esac
