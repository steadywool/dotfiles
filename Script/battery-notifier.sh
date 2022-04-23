#!/bin/bash

# Send a notification with cronie when there is not much battery remaining
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ $bat_status = 'Discharging' ]] && [[ $bat_capacity -lt 20 ]]; then
    notify-send --urgency=critical 'Battery capacity' "$bat_capacity% remaining"
fi
