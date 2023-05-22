#!/bin/bash

SCREENSHOT_DIR="${HOME}/Images/Screenshots"
MENU="fuzzel -d -w 20 -l 4 --index"

# Create screenshot dir
if [[ ! -d ${SCREENSHOT_DIR} ]]; then
    mkdir -p ${SCREENSHOT_DIR}
fi

# Save the screenshot to ${SCREENSHOT_DIR}
save_screenshot() {
    var+=('󰹑 save-screen')
    var+=('󱣴 save-output')
    var+=(' save-active')
    var+=('󰒉 save-area')

    CHOICE=$(printf '%s\n' ${var[@]} | ${MENU})

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
}

# Copy the screenshot to clipboard
copy_screenshot() {
    var+=('󰹑 copy-screen')
    var+=('󱣴 copy-output')
    var+=(' copy-active')
    var+=('󰒉 copy-area')

    CHOICE=$(printf '%s\n' ${var[@]} | ${MENU})

    case ${CHOICE} in
        0)
            /usr/share/sway/scripts/grimshot --notify copy screen -
        ;;
        1)
            /usr/share/sway/scripts/grimshot --notify copy output -
        ;;
        2)
            /usr/share/sway/scripts/grimshot --notify copy active -
        ;;
        3)
            /usr/share/sway/scripts/grimshot --notify copy area -
        ;;
    esac
}

# Select screenshot mode
case ${1} in
    '--save')
        save_screenshot
    ;;
    '--copy')
        copy_screenshot
    ;;
esac
