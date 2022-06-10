#!/bin/bash

# Show date & hour
date_formatted=$(date +'%Y-%m-%d %H:%M')

# Show battery capacity & status
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ $bat_status = 'Charging' ]]; then
    bat_info=' ↑'
elif [[ $bat_status = 'Discharging' ]]; then
    bat_info=' ↓'
elif [[ $bat_status = 'Unknown' ]]; then
    bat_info=' ?'
fi

# Show volume and mute info
volume=$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}')
mute=$(pactl list sinks | grep Mute | awk '{print $2}' | sed 's/no/✗/g' | sed 's/yes/✓/g')

# Show if we are connected or not
route=$(ip route show | grep -o 'default')

if [[ -z $route ]]; then
    network='✗'
else
    network='✓'
fi

# Get current brightness
brightness=$(light -G | cut -d '.' -f1)

# Storage
storage=$(df -h --output=pcent ~/ | tail -n1 | sed 's/ //g')
root_storage=$(df -h --output=pcent / | tail -n1 | sed 's/ //g')

# CPU
cpu_usage=$(top -ibn1 | grep '%Cpu' | awk '{print $2}')

# Task
pending_task=$(task +PENDING count)
overdue_task=$(task +OVERDUE count)

# Scratchpad
scratch=$(swaymsg -t get_tree | jq -r '.nodes[] | select(.name == "__i3").nodes[] | select(.name == "__i3_scratch").floating_nodes | length')

# Echo command for sway-bar
echo "[# $scratch] [TASK !$overdue_task/$pending_task] [CPU $cpu_usage%] [/ $root_storage] [/home $storage] \
[LIGHT $brightness%] [ROUTE $network] [MUTE $mute] [VOL $volume] [BAT $bat_capacity%$bat_info] [$date_formatted]"
