#!/bin/bash

config="$HOME/.config/gtk-3.0/settings.ini"

gtk_theme="$(grep 'gtk-theme-name' "$config" | sed 's/.*\s*=\s*//')"
icon_theme="$(grep 'gtk-icon-theme-name' "$config" | sed 's/.*\s*=\s*//')"
cursor_theme="$(grep 'gtk-cursor-theme-name' "$config" | sed 's/.*\s*=\s*//')"
font_name="$(grep 'gtk-font-name' "$config" | sed 's/.*\s*=\s*//')"

gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme"
gsettings set org.gnome.desktop.interface icon-theme "$icon_theme"
gsettings set org.gnome.desktop.interface cursor-theme "$cursor_theme"
gsettings set org.gnome.desktop.interface font-name "$font_name"
