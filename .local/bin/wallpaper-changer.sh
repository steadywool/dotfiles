#!/bin/bash

# Default folder
WALLPAPER_DIR="${HOME}/Pictures/Backgrounds"
if [[ ! -d ${WALLPAPER_DIR} ]]; then
    mkdir -p ${WALLPAPER_DIR}
fi

case ${1} in
    # Use a random wallpaper from a folder
    '-r' | '--random')
        random_wallpaper=$(find ${2:-${WALLPAPER_DIR}} -type f | shuf -n1)
        gsettings set org.gnome.desktop.background picture-uri file://${random_wallpaper}
        gsettings set org.gnome.desktop.background picture-uri-dark file://${random_wallpaper}
    ;;

    #download a temporary wallpaper with Picsum
    '-d' | '--download')
        curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080' && \
        gsettings set org.gnome.desktop.background picture-uri file:///tmp/wallpaper.jpg
        gsettings set org.gnome.desktop.background picture-uri-dark file:///tmp/wallpaper.jpg
        swaymsg output '*' bg /tmp/wallpaper.jpg fill
    ;;
esac
