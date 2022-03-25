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
mute=$(pactl list sinks | grep Mute | awk '{print $2}' | sed 's/no/✗/g' | sed 's/yes/✓/g')

# Show if we are connected or not
route=$(ip route show | grep -o "default")

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

# CPU
cpu_usage=$(top -bn1 | grep "%Cpu" | awk '{print $2}')

# Echo command for sway-bar
echo [CPU $cpu_usage\%] [/ $root_storage] [$USER $storage] [VER $linux_version] [LIGHT $brightness\%] [ROUTE $network] [MUTE $mute] [VOL $volume] [BAT $bat_capacity\%$bat_info] [$date_formatted]
