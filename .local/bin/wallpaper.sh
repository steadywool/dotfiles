#!/bin/bash

# Default folder
WALLPAPER_DIR="${HOME}/Pictures/Wallpaper"
if [[ ! -d ${WALLPAPER_DIR} ]]; then
    mkdir -p ${WALLPAPER_DIR}
fi

case ${1} in
    # Use a random wallpaper from a folder
    '--random' | '-r')
        swaymsg output '*' bg $(find ${2:-${WALLPAPER_DIR}} -type f | shuf -n1) fill
    ;;

    #download a temporary wallpaper with Picsum
    '--download' | '-d')
        curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080' && \
        swaymsg output '*' bg /tmp/wallpaper.jpg fill
    ;;

    # Select an image as wallpaper
    '--image' | '-i')
        swaymsg output '*' bg ${2} fill
    ;;
 
    # Select a color as wallpaper
    '--color' | '-c')
        swaymsg output '*' bg ${2} solid_color
    ;;

    # Show the help
    '--help' | '-h')
        echo "Commands:"
        echo "  -r, --random <directory>  Use a random wallpaper from a folder"
        echo "  -d, --download            download a temporary wallpaper with Picsum"
        echo "  -i, --image <file>        Select an image as wallpaper"
        echo "  -c, --color <string>      Select a color as wallpaper"
        echo "  -h, --help                Show the help"
    ;;

    # Default
    *)
        ${0} --help
    ;;
esac
