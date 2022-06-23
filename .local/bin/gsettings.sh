#!/bin/bash

config="$HOME/.config/gtk-4.0/settings.ini"

if [[ -f $config ]]; then
    gtk_theme=$(grep 'gtk-theme-name' $config | cut -d '=' -f2)
    icon_theme=$(grep 'gtk-icon-theme-name' $config | cut -d '=' -f2)
    cursor_theme=$(grep 'gtk-cursor-theme-name' $config | cut -d '=' -f2)
    font_name=$(grep 'gtk-font-name' $config | cut -d '=' -f2)

    gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme"
    gsettings set org.gnome.desktop.interface icon-theme "$icon_theme"
    gsettings set org.gnome.desktop.interface cursor-theme "$cursor_theme"
    gsettings set org.gnome.desktop.interface font-name "$font_name"
    gsettings set org.gnome.desktop.wm.preferences button-layout :
fi
