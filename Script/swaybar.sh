#!/bin/bash

# Show date & hour
date_formatted=$(date +"%a %d %b %Y %H:%M")

# Show battery capacity & status
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [ $bat_status = "Charging" ]; then
    bat_info="↑"
elif [ $bat_status = "Discharging" ]; then
    bat_info="↓"
fi

# Show volume and mute info
volume=$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}')
mute=$(pactl list sinks | grep Mute | cut -c 7-)

# Show contrast level with light
contrast=$(light -G)

# Show linux version
linux_version=$(uname -r | cut -d '-' -f1)

# Echo command for sway-bar
echo [VER $linux_version] [CONT $contrast%] [MUTE $mute] [VOL $volume] [BAT $bat_capacity% $bat_info] [$date_formatted]

