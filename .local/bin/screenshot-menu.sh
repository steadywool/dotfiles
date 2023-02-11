#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshot"

var+=(' save-all')
var+=(' save-output')
var+=(' save-window')
var+=(' save-area')

var+=(' copy-all')
var+=(' copy-output')
var+=(' copy-window')
var+=(' copy-area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 8)

output=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')
window=$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Save screenshot
case ${CHOICE} in

    # Screenshot of every outputs
    ' save-all')
        grim ${SCREENSHOT_DIR}/$(date +%s_all).png && \
        notify-send --urgency=low "Saved in ${SCREENSHOT_DIR}"
    ;;

    # Screenshot of current output
    ' save-output')
        grim -o "${output}" ${SCREENSHOT_DIR}/$(date +%s_output).png && \
        notify-send --urgency=low "Saved in ${SCREENSHOT_DIR}"
    ;;

    # Screenshot of current window
    ' save-window')
        grim -g "${window}" ${SCREENSHOT_DIR}/$(date +%s_window).png && \
        notify-send --urgency=low "Saved in ${SCREENSHOT_DIR}"
    ;;

    # Screenshot of selected area
    ' save-area')
        grim -g "$(slurp)" ${SCREENSHOT_DIR}/$(date +%s_area).png && \
        notify-send --urgency=low "Saved in ${SCREENSHOT_DIR}"
    ;;
esac

# Copy screenshot to clipboard
case ${CHOICE} in

    # Copy of every outputs
    ' copy-all')
        grim - | wl-copy && \
        notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of current output
    ' copy-output')
        grim -o "${output}" - | wl-copy && \
        notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of current window
    ' copy-window')
        grim -g "${window}" - | wl-copy && \
        notify-send --urgency=low 'Saved in clipboard'
    ;;

    # Copy of selected area
    ' copy-area')
        grim -g "$(slurp)" - | wl-copy && \
        notify-send --urgency=low 'Saved in clipboard'
    ;;
esac
