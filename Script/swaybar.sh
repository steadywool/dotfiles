#!/bin/bash

# Show date & hour
date_formatted=$(date +"%a %d %b %Y %H:%M")

# Show battery capacity & status
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [ $bat_status = "Charging" ]; then
    bat_info=" ↑"
elif [ $bat_status = "Discharging" ]; then
    bat_info=" ↓"
fi

# Show volume and mute info
volume=$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}')
mute=$(pactl list sinks | grep Mute | cut -f2 | sed 's/Mute: no/✗/g' | sed 's/Mute: yes/✓/g')

# Show if we are connected or not
route=$(ip route show)

if [ -z $route ]; then
    network="✗"
else
    network="✓"
fi

# Get current brightness
brightness=$(light -G | cut -d '.' -f1)

# Show linux version
linux_version=$(uname -r | cut -d '-' -f1)

# Storage
storage=$(df -h --output=avail ~/ | tail -n1 | sed 's/ //g')
root_storage=$(df -h --output=avail / | tail -n1 | sed 's/ //g')

# Echo command for sway-bar
echo [ROOT $root_storage] [HOME $storage] [VER $linux_version] [LIGHT $brightness%] [NET $network] [MUTE $mute] [VOL $volume] [BAT $bat_capacity%$bat_info] [$date_formatted]

