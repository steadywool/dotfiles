#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshots"

var+=('󰍹 save-screen')
var+=('󰹑 save-output')
var+=(' save-window')
var+=('󰒉 save-area')

var+=('󰍹 copy-screen')
var+=('󰹑 copy-output')
var+=(' copy-window')
var+=('󰒉 copy-area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 8 --index)

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Save screenshot
case ${CHOICE} in
    0)
        /usr/share/sway/scripts/grimshot --notify save screen ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    1)
        /usr/share/sway/scripts/grimshot --notify save output ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    2)
        /usr/share/sway/scripts/grimshot --notify save active ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    3)
        /usr/share/sway/scripts/grimshot --notify save area ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
esac

# Copy screenshot
case ${CHOICE} in
    4)
        /usr/share/sway/scripts/grimshot --notify copy screen -
    ;;
    5)
        /usr/share/sway/scripts/grimshot --notify copy output -
    ;;
    6)
        /usr/share/sway/scripts/grimshot --notify copy active -
    ;;
    7)
        /usr/share/sway/scripts/grimshot --notify copy area -
    ;;
esac
