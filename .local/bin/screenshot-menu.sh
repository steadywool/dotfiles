#!/bin/bash

SCREENSHOT_DIR="${HOME}/Pictures/Screenshot"

var+=('󰍹 screen')
var+=('󰹑 output')
var+=(' active')
var+=('󰒉 area')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -l 4 --index)

# Create screenshot folder if there is none
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Take a screenshot and open it with Swappy
case ${CHOICE} in
    0)
        /usr/share/sway/scripts/grimshot save screen - | swappy -f -
    ;;
    1)
        /usr/share/sway/scripts/grimshot save output - | swappy -f -
    ;;
    2)
        /usr/share/sway/scripts/grimshot save active - | swappy -f -
    ;;
    3)
        /usr/share/sway/scripts/grimshot save area - | swappy -f -
    ;;
esac
