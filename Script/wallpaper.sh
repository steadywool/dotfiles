#!/bin/bash

route=$(ip route show | grep -o 'default')

# If there is no connection
if [ -z $route ]; then

    # If there is a wallpaper
    if [ -f '/tmp/wallpaper.jpg' ]; then
        swaymsg output "*" bg /tmp/wallpaper.jpg fill
    else
        swaymsg output "*" bg \#4c566a solid_color
    fi

else
    # Download a wallpaper
    wget -O /tmp/wallpaper.jpg https://source.unsplash.com/3840x2160/?nature,sea
    swaymsg output "*" bg /tmp/wallpaper.jpg fill
fi
