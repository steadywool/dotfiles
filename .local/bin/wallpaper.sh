#!/bin/bash

WALLPAPER="${HOME}/Pictures/Wallpaper"

# Create wallpaper folder if there is none
if [[ ! -d ${WALLPAPER} ]]; then
    mkdir -p ${WALLPAPER}
fi

# If there is NO wallpaper in $WALLPAPER
if [[ -z "$(ls -A ${WALLPAPER})" ]]; then

    # Download the wallpaper
    wget -O /tmp/wallpaper.jpg 'https://source.unsplash.com/1920x1080/?nature'

    # If wget OK
    if [[ ${?} -eq 0 ]]; then
        swaymsg output '*' bg /tmp/wallpaper.jpg fill

    # If wget NOT OK
    else
        swaymsg output '*' bg '#1d2021' solid_color
    fi

# If there is wallpaper(s) in $WALLPAPER
else
    # Select a random wallpaper from $WALLPAPER directory
    swaymsg output '*' bg $(find ${WALLPAPER} -type f | shuf -n1) fill
fi
