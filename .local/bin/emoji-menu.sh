#!/bin/bash

EMOJI="$HOME/.local/bin/emoji-menu/emoji.txt"

case ${1} in
    # emoji-menu.sh --setup
    '--setup')

        if [[ ! -f ${EMOJI} ]]; then
            mkdir -p $(dirname ${EMOJI})
            touch ${EMOJI}
        fi

        # Our API key to emoji-api.com
        api_key="cb99dbe6e9fceab25e156ea499b4323f40725a8a"
        fetched_emoji=$(curl https://emoji-api.com/emojis?access_key=${api_key})

        # If the command worked
        if [[ ${?} -eq 0 ]]; then

            # We select the emoji and its name only
            fetched_emoji=$(echo ${fetched_emoji} | jq --raw-output ".[] | \"\(.character) \(.slug),\"")

            # We write the result in our emoji list
            echo ${fetched_emoji} | sed -e 's/, /\n/g' > ${EMOJI}
        fi
    ;;

    # emoji-menu.sh
    *)
        # We copy the chosen emoji with Bemenu and Wl-clipboard
        cat ${EMOJI} | bemenu -p "emoji" -l 16 --no-exec | cut -d ' ' -f1 | wl-copy
    ;;
esac
