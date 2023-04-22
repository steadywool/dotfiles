#!/bin/bash

EMOJI_DIR=${HOME}/.local/share/emoji
EMOJI_FILE=${EMOJI_DIR}/emoji.txt
MENU="fuzzel -d -l 20"

create_dir() {
    # Create emoji folder if there is none
    if [[ ! -d ${EMOJI_DIR} ]]; then
        mkdir -p ${EMOJI_DIR}
    fi
}
download_emoji() {
    # Download emojis and create a file with them inside
    get_emoji=$(curl -sSL "https://unicode.org/Public/emoji/latest/emoji-test.txt")
    printf '%s\n' "${get_emoji}" | sed -ne 's/^.*; fully-qualified.*# \(\S*\) \S* \(.*$\)/\1 \2/gp' > ${EMOJI_FILE}
}

# Check if the emoji file exist
if [[ ! -f ${EMOJI_FILE} ]]; then
    create_dir
    download_emoji
else
    cat ${EMOJI_FILE} | ${MENU} | cut -d ' ' -f1 | wl-copy
fi
