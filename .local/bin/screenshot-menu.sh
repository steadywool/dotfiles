#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshot"

var+=('󰍹 screen')
var+=('󰹑 output')
var+=(' active')
var+=('󰒉 area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 4)

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Take a screenshot and open it with Swappy
case ${CHOICE} in
    '󰍹 screen')
        /usr/share/sway/scripts/grimshot save screen - | swappy -f -
    ;;
    '󰹑 output')
        /usr/share/sway/scripts/grimshot save output - | swappy -f -
    ;;
    ' active')
        /usr/share/sway/scripts/grimshot save active - | swappy -f -
    ;;
    '󰒉 area')
        /usr/share/sway/scripts/grimshot save area - | swappy -f -
    ;;
esac
