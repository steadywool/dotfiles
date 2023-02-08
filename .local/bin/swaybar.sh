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

# Show default sink volume
mute=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}')
if [[ ${mute} -eq '' ]]; then
    sink_volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')
else
    sink_volume="muted"
fi

# Show default source volume
mute=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3}')
if [[ ${mute} -eq '' ]]; then
    source_volume=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $2}')
else
    source_volume="muted"
fi

# Show if there is a default route
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
home_storage=$(homectl inspect | grep Free | awk '{print $3}')

# Task
pending_task=$(task +PENDING count)
overdue_task=$(task +OVERDUE count)

# Echo command for swaybar
echo "[󰢨 !${overdue_task}/${pending_task}] [ ${root_storage}] [ ${home_storage}] [ ${brightness}%] [󰛳 ${network}] [ ${source_volume}] [ ${sink_volume}] [ ${bat_capacity}%${bat_info}] [ ${date_formatted}]"
