#!/bin/bash

config="$HOME/.config/gtk-3.0/settings.ini"

if [ -f $config ]; then
    gtk_theme=$(grep 'gtk-theme-name' $config | cut -f2 -d=)
    icon_theme=$(grep 'gtk-icon-theme-name' $config | cut -f2 -d=)
    cursor_theme=$(grep 'gtk-cursor-theme-name' $config | cut -f2 -d=)
    font_name=$(grep 'gtk-font-name' $config | cut -f2 -d=)

    gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme"
    gsettings set org.gnome.desktop.interface icon-theme "$icon_theme"
    gsettings set org.gnome.desktop.interface cursor-theme "$cursor_theme"
    gsettings set org.gnome.desktop.interface font-name "$font_name"
fi
