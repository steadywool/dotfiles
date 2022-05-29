#!/bin/bash

WALLPAPER=$HOME/Pictures/Wallpaper

route=$(ip route show | grep -o 'default')

# Create wallpaper folder if there is none
if [[ ! -d $WALLPAPER ]]; then
    mkdir -p $WALLPAPER
fi

# If there is no wallpaper in $WALLPAPER
if [[ -z `ls -A $WALLPAPER` ]]; then

    # If there is a connection
    if [[ ! -z $route ]]; then

        # Download a wallpaper
        wget -O /tmp/wallpaper.jpg https://source.unsplash.com/1920x1080/?nature
        swaymsg output "*" bg /tmp/wallpaper.jpg fill

    else
        swaymsg output "*" bg "#000000" solid_color
    fi

else
    # Select a random wallpaper from $WALLPAPER directory
    swaymsg output "*" bg $(find $WALLPAPER -type f | shuf -n1) fill
fi
