#!/bin/bash

CONFIG="${HOME}/.config/gtk-4.0/settings.ini"

if [[ -f ${CONFIG} ]]; then
    icon_theme=$(grep 'gtk-icon-theme-name' ${CONFIG} | cut -d '=' -f2)
    font_name=$(grep 'gtk-font-name' ${CONFIG} | cut -d '=' -f2)

    gsettings set org.gnome.desktop.interface icon-theme "${icon_theme}"
    gsettings set org.gnome.desktop.interface font-name "${font_name}"

    gsettings set org.gnome.desktop.wm.preferences button-layout :
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
fi
