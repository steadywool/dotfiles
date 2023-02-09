#!/bin/bash

WALLPAPER="${HOME}/Pictures/Wallpaper"

# Create wallpaper folder if there is none
if [[ ! -d ${WALLPAPER} ]]; then
    mkdir -p ${WALLPAPER}
fi

# If there is NO wallpaper in $WALLPAPER
if [[ -z $(ls -A ${WALLPAPER}) ]]; then

    # Download the wallpaper
    curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080'

    # If curl OK
    if [[ ${?} -eq 0 ]]; then
        swaymsg output '*' bg /tmp/wallpaper.jpg fill

    # If curl NOT OK
    else
        swaymsg output '*' bg '#1d2021' solid_color
    fi

# If there is wallpaper(s) in $WALLPAPER
else
    # Select a random wallpaper from $WALLPAPER directory
    swaymsg output '*' bg $(find ${WALLPAPER} -type f | shuf -n1) fill
fi