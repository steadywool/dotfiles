#!/bin/zsh

# Change the cursor when changing of Vi mode
zle-keymap-select() {
    if [[ ${KEYMAP} == 'vicmd' ]]; then echo -ne '\e[1 q'
    else echo -ne '\e[5 q'
    fi
}

# Use the beam cursor by default
zle-line-init() {echo -ne '\e[5 q'}
