#!/bin/bash

route=$(ip route show | grep -o 'default')

# If there is no connection
if [ -z $route ]; then

    # If there is a wallpaper
    if [ -f '/tmp/wallpaper.jpg' ]; then
        swaymsg output "*" bg /tmp/wallpaper.jpg fill
    else
        swaymsg output "*" color 4c566a
    fi

else
    # Download a wallpaper
    wget -O /tmp/wallpaper.jpg https://source.unsplash.com/1366x768/?nature,water
    swaymsg output "*" bg /tmp/wallpaper.jpg fill
fi
