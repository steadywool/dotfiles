#!/bin/bash

WALLPAPER=$HOME/Pictures/Wallpaper

route=$(ip route show | grep -o 'default')

# Create wallpaper folder if there is none
if [[ ! -d $WALLPAPER ]]; then
    mkdir -p $WALLPAPER
fi

# If there is NO wallpaper in $WALLPAPER
if [[ -z `ls -A $WALLPAPER` ]]; then

    # If there is a connection
    if [[ ! -z $route ]]; then

        # Download a wallpaper
        wget -O /tmp/wallpaper.jpg https://source.unsplash.com/1920x1080/?nature
        swaymsg output "*" bg /tmp/wallpaper.jpg fill

    # If there is NO connection
    else
        swaymsg output "*" bg "#000000" solid_color
    fi

# If there is wallpaper(s) in $WALLPAPER
else
    # Select a random wallpaper from $WALLPAPER directory
    cp $(find $WALLPAPER -type f | shuf -n1) /tmp/wallpaper.jpg

    swaymsg output "*" bg /tmp/wallpaper.jpg fill
fi

# Blur the wallpaper for the screenlocker if there is a wallpaper
if [[ -f /tmp/wallpaper.jpg ]]; then
    convert -scale 5% -blur 0x2.5 -resize 1000% /tmp/wallpaper.jpg /tmp/blurred_wallpaper.jpg
fi
