#!/bin/bash

# If there is no wallpaper, use a color
if [[ ! -f /tmp/blurred_wallpaper.jpg ]]; then
    swaylock -e -f -c 1d2021
else
    # Use the blurred wallpaper
    swaylock -e -f -i /tmp/blurred_wallpaper.jpg
fi
