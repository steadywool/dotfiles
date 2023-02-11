#!/bin/bash

# Your wallpaper directory
WALLPAPER_DIR="${HOME}/Pictures/Wallpaper"

# Create wallpaper folder if there is none
if [[ ! -d ${WALLPAPER_DIR} ]]; then
    mkdir -p ${WALLPAPER_DIR}
fi

case ${1} in
    '--random' | '-r')
        swaymsg output '*' bg $(find ${WALLPAPER_DIR} -type f | shuf -n1) fill
    ;;

    '--download' | '-d')
        curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080'
        swaymsg output '*' bg /tmp/wallpaper.jpg fill
    ;;

    '--select' | '-s')
        swaymsg output '*' bg ${2} fill
    ;;

    '--color' | '-c')
        swaymsg output '*' bg ${2} solid_color
    ;;

    '--help' | '-h')
        echo "Commands:"
        echo "  -r, --random           Select a random wallpaper from the default directory"
        echo "  -d, --download         Download a wallpaper from Picsum"
        echo "  -s, --select <string>  Select a picture as a wallpaper"
        echo "  -c, --color <string>   Select a color as a wallapaper"
        echo "  -h, --help             Show the help"
    ;;

    *)
        ${0} --help
    ;;
esac
