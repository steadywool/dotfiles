#!/bin/bash

SCREENSHOT_DIR="${HOME}/Images/Screenshots"

# Create screenshot dir
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Variables
var+=('󱣴 save-output')
var+=(' save-active')
var+=('󰒉 save-area')
var+=('󱣴 copy-output')
var+=(' copy-active')
var+=('󰒉 copy-area')

# Select a value with your menu
CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 6 --index)

# Save or copy screenshot
case ${CHOICE} in
    0)
        /usr/share/sway/scripts/grimshot --notify save output ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    1)
        /usr/share/sway/scripts/grimshot --notify save active ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    2)
        /usr/share/sway/scripts/grimshot --notify save area ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    3)
        /usr/share/sway/scripts/grimshot --notify copy output -
    ;;
    4)
        /usr/share/sway/scripts/grimshot --notify copy active -
    ;;
    5)
        /usr/share/sway/scripts/grimshot --notify copy area -
    ;;
esac
