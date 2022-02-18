#!/bin/bash

var+=("power off")
var+=("reboot")
var+=("hibernate")
var+=("suspend")
var+=("lock")
var+=("exit sway")

CHOICE=$(printf '%s\n' "${var[@]}" | bemenu -p 'power ')

if [[ $CHOICE = "power off" ]]; then
    shutdown -h now

elif [[ $CHOICE = "reboot" ]]; then
    reboot

elif [[ $CHOICE = "hibernate" ]]; then
    systemctl hibernate

elif [[ $CHOICE = "suspend" ]]; then
    systemctl suspend

elif [[ $CHOICE = "lock" ]]; then
    swaylock -c 131619

elif [[ $CHOICE = "exit sway" ]]; then
    swaymsg exit
fi
