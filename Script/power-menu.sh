#!/bin/bash

var+=("power-off")
var+=("reboot")
var+=("hibernate")
var+=("hybrid-sleep")
var+=("suspend")
var+=("lock")
var+=("exit-sway")

CHOICE=$(printf "%s\n" "${var[@]}" | bemenu -p "power ")

if [[ $CHOICE = "power-off" ]]; then
    shutdown -h now

elif [[ $CHOICE = "reboot" ]]; then
    shutdown -r now

elif [[ $CHOICE = "hibernate" ]]; then
    systemctl hibernate

elif [[ $CHOICE = "hybrid-sleep" ]]; then
    systemctl hybrid-sleep

elif [[ $CHOICE = "suspend" ]]; then
    systemctl suspend

elif [[ $CHOICE = "lock" ]]; then
    swaylock -c 000000

elif [[ $CHOICE = "exit-sway" ]]; then
    swaymsg exit
fi
