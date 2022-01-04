#!/bin/bash

# Send a notification with cronie when the battery capacity is smaller than 25%
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ $bat_status = "Discharging" ]] && [[ $bat_capacity -lt 35 ]]; then
    notify-send --urgency=critical "Battery capacity" "$bat_capacity% remaining"
fi
