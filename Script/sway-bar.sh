#!/bin/bash

# Show date & hour
date_formatted=$(date +"%a %d %b %Y %H:%M")

# Show battery capacity
battery_info=`cat /sys/class/power_supply/BAT0/capacity`

# Show sound level from pulseaudio
pulse=`pactl list sinks | grep '^[[:space:]]Volume:' | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'`

# Show if audio is muted or not
pulse_mute=`pactl list sinks | grep Mute | cut -c 7-`

# If audio is'nt muted, then show sound level
if [ $pulse_mute = "no" ];then
	sound=$pulse%
else
	sound="Muted"
fi

# Show contrast level with light
contrast=`light -G`

# Echo command for sway-bar
echo [CONT $contrast%] [VOL $sound] [BAT $battery_info%] [$date_formatted]
