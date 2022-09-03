#!/bin/bash

LOCK_ARGS=""

# For each connected output, do this
for output in $(swaymsg -t get_outputs | jq -r '.[] | .name'); do

    screenshot="/tmp/${output}.jpg"

    # Take the screenshot of each outputs
    grim -o ${output} ${screenshot}

    # If grim OK
    if [[ ${?} -eq 0 ]]; then

        # Pixelize each screenshots
        convert ${screenshot} -scale 10% -scale 1000% ${screenshot}

        # If imagemagick OK
        if [[ ${?} -eq 0 ]]; then
            # Add arguments of each output to a variable
            LOCK_ARGS="${LOCK_ARGS} -i ${output}:${screenshot}"
        fi
    fi

done

swaylock ${LOCK_ARGS}
