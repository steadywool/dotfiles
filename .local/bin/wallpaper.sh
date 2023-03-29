#!/bin/bash

# Default folder
WALLPAPER_DIR="${HOME}/Pictures/Wallpaper"
if [[ ! -d ${WALLPAPER_DIR} ]]; then
    mkdir -p ${WALLPAPER_DIR}
fi

case ${1} in
    # Use a random wallpaper from a folder
    '-r' | '--random')
        swaymsg output '*' bg $(find ${2:-${WALLPAPER_DIR}} -type f | shuf -n1) fill
    ;;

    #download a temporary wallpaper with Picsum
    '-d' | '--download')
        curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080' && \
        swaymsg output '*' bg /tmp/wallpaper.jpg fill
    ;;

    # Select an image as wallpaper
    '-i' | '--image')
        swaymsg output '*' bg ${2} fill
    ;;
 
    # Select a color as wallpaper
    '-c' | '--color')
        swaymsg output '*' bg ${2} solid_color
    ;;
esac
