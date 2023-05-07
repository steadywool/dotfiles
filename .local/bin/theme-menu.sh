#!/bin/bash

var+=(' dark-mode')
var+=(' light-mode')

CHOICE=$(printf '%s\n' ${var[@]} | fuzzel -d -w 20 -l 2 --index)

case ${CHOICE} in
    0)
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        echo -e '[Settings]\ngtk-application-prefer-dark-theme=1' > "$HOME/.config/gtk-3.0/settings.ini"
        echo -e '[Settings]\ngtk-application-prefer-dark-theme=1' > "$HOME/.config/gtk-4.0/settings.ini"
    ;;
    1)
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
        echo -e '[Settings]\ngtk-application-prefer-dark-theme=0' > "$HOME/.config/gtk-3.0/settings.ini"
        echo -e '[Settings]\ngtk-application-prefer-dark-theme=0' > "$HOME/.config/gtk-4.0/settings.ini"
    ;;
esac
