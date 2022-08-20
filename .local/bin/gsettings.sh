#!/bin/bash

CONFIG="${HOME}/.config/gtk-4.0/settings.ini"

if [[ -f ${CONFIG} ]]; then
    gtk_theme=$(grep 'gtk-theme-name' ${CONFIG} | cut -d '=' -f2)
    icon_theme=$(grep 'gtk-icon-theme-name' ${CONFIG} | cut -d '=' -f2)
    font_name=$(grep 'gtk-font-name' ${CONFIG} | cut -d '=' -f2)
    cursor_theme=$(grep 'gtk-cursor-theme-name' ${CONFIG} | cut -d '=' -f2)
    cursor_size=$(grep 'gtk-cursor-theme-size' ${CONFIG} | cut -d '=' -f2)

    gsettings set org.gnome.desktop.interface gtk-theme "${gtk_theme}"
    gsettings set org.gnome.desktop.interface icon-theme "${icon_theme}"
    gsettings set org.gnome.desktop.interface font-name "${font_name}"
    gsettings set org.gnome.desktop.interface cursor-theme "${cursor_theme}"
    gsettings set org.gnome.desktop.interface cursor-size "${cursor_size}"
    gsettings set org.gnome.desktop.wm.preferences button-layout :
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
fi
