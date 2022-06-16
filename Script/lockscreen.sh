#!/bin/bash

LOCK_ARGS=""

# If grim is not installed
if [[ ! $(which grim) ]]; then
    swaylock -e -f -c 1d2021

# Else if grim is installed
else

    # For each connected output, do this
    for output in $(swaymsg -t get_outputs | jq -r '.[] | .name'); do

        screenshot=/tmp/$output.jpg

        # Take the screenshot of each outputs
        grim -o $output $screenshot

        # Pixelize each screenshots
        convert $screenshot -scale 10% -scale 1000% $screenshot

        # Add arguments of each output to a variable
        LOCK_ARGS="$LOCK_ARGS --image $output:$screenshot"
    done

    # Lock
    swaylock $LOCK_ARGS
fi
