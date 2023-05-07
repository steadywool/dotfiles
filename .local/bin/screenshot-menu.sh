#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshots"

var+=('󰹑 save-output')
var+=('󰹑 copy-output')

var+=(' save-active')
var+=(' copy-active')

var+=('󰒉 save-area')
var+=('󰒉 copy-area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 6 --index)

# Create screenshot dir
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Output
case ${CHOICE} in
    0)

        /usr/share/sway/scripts/grimshot --notify save output ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    1)
        /usr/share/sway/scripts/grimshot --notify copy output -
    ;;
esac

# Active
case ${CHOICE} in
    2)
        /usr/share/sway/scripts/grimshot --notify save active ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    3)
        /usr/share/sway/scripts/grimshot --notify copy active -
    ;;
esac

# Area
case ${CHOICE} in
    4)
        /usr/share/sway/scripts/grimshot --notify save area ${SCREENSHOT_DIR}/$(date +%s).png
    ;;
    5)
        /usr/share/sway/scripts/grimshot --notify copy area -
    ;;
esac
