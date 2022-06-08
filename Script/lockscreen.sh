#!/bin/bash

# If there is no wallpaper, use a color
if [[ ! -f /tmp/blurred_wallpaper.jpg ]]; then
    swaylock -c 1d2021
else
    # Use the blurred wallpaper
    swaylock -i /tmp/blurred_wallpaper.jpg
fi
