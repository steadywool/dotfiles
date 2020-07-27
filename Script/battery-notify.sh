#!/bin/sh

CRITICAL_LEVEL=10  
LOW_LEVEL=20
BAT_LEVEL=$(acpi | awk -F ',' '{print $2}' | awk -F'[^0-9]*' '$0=$2')

if [[ -z "$BAT_LEVEL" ]]; then
	exit 0
fi

if [[ "$BAT_LEVEL" -le "$CRITICAL_LEVEL" ]]; then
	notify-send -u critical "Battery Critical" "Battery level is %{BAT_LEVEL}%"
	exit 0
fi

if [[ "$BAT_LEVEL" -le "$LOW_LEVEL" ]]; then
	notify-send -u critical "Battery Low" "Battery level is ${BAT_LEVEL}%"
	exit 0
fi
