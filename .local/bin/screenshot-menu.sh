#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshot"

var+=('󰍹 save-screen')
var+=('󰅌 copy-screen')
var+=('󰹑 save-output')
var+=('󰅌 copy-output')
var+=(' save-active')
var+=('󰅌 copy-active')
var+=('󰒉 save-area')
var+=('󰅌 copy-area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 8 --index)

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Save or copy a screenshot
case ${CHOICE} in
    0)
        /usr/share/sway/scripts/grimshot --notify save screen ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    1)
        /usr/share/sway/scripts/grimshot --notify copy screen -
    ;;
    2)
        /usr/share/sway/scripts/grimshot --notify save output ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    3)
        /usr/share/sway/scripts/grimshot --notify copy output -
    ;;
    4)
        /usr/share/sway/scripts/grimshot --notify save active ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    5)
        /usr/share/sway/scripts/grimshot --notify copy active -
    ;;
    6)
        /usr/share/sway/scripts/grimshot --notify save area ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    7)
        /usr/share/sway/scripts/grimshot --notify copy area -
    ;;
esac
