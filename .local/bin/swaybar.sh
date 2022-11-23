#!/bin/bash

# Show date & hour
date_formatted=$(date +'%Y-%m-%d %H:%M')

# Show battery capacity & status
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ ${bat_status} = 'Charging' ]]; then
    bat_info=' ↑'
elif [[ ${bat_status} = 'Discharging' ]]; then
    bat_info=' ↓'
elif [[ ${bat_status} = 'Unknown' ]]; then
    bat_info=' ?'
fi

# Show the volume or if the sound is muted
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [[ ${mute} = 'yes' ]]; then
    volume='muted'
else
    left_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
    #right_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $12}')

    volume="${left_volume}"
fi

route=$(ip route show | grep -o 'default')

if [[ -z ${route} ]]; then
    network='✗'
else
    network='✓'
fi

# Get current brightness
brightness=$(light -G | cut -d '.' -f1)

# Storage
root_storage=$(btrfs filesystem usage / | grep Free | head -n1 | awk '{print $3}')

# Task
pending_task=$(task +PENDING count)
overdue_task=$(task +OVERDUE count)

# Echo command for swaybar
echo "[TASK !${overdue_task}/${pending_task}] [/ ${root_storage}] [LIGHT ${brightness}%] [NET ${network}] [VOL ${volume}] [BAT ${bat_capacity}%${bat_info}] [${date_formatted}]"
