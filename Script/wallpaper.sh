#!/bin/bash

WALLPAPER=$HOME/Pictures/Wallpaper
TMP_WALLPAPER=/tmp/Wallpaper

# Create wallpaper folder if there is none
if [[ ! -d $WALLPAPER ]]; then
    mkdir -p $WALLPAPER
fi

# Create tmp wallpaper folder if there is none
if [[ ! -d $TMP_WALLPAPER ]]; then
    mkdir -p $TMP_WALLPAPER
fi

# If there is NO wallpaper in $WALLPAPER
if [[ -z $(ls -A $WALLPAPER) ]]; then

    # If there is a connection
    if [[ ! -z $(ip route show | grep -o 'default') ]]; then

        # Download a wallpaper
        wget -O $TMP_WALLPAPER/wallpaper.jpg https://source.unsplash.com/1920x1080/?nature
        swaymsg output "*" bg $TMP_WALLPAPER/wallpaper.jpg fill

    # If there is NO connection
    else
        swaymsg output "*" bg "#1d2021" solid_color
    fi

# If there is wallpaper(s) in $WALLPAPER
else
    # Select a random wallpaper from $WALLPAPER directory
    cp $(find $WALLPAPER -type f | shuf -n1) $TMP_WALLPAPER/wallpaper.jpg

    swaymsg output "*" bg $TMP_WALLPAPER/wallpaper.jpg fill
fi
