#!/bin/zsh

# Cursor
function zle-keymap-select {
    if [[ ${KEYMAP} == 'vicmd' ]] || [[ ${1} = 'block' ]]; then
        echo -ne '\e[1 q'
    else
        echo -ne '\e[5 q'
    fi
}

zle -N zle-keymap-select
echo -ne '\e[5 q'
preexec() {echo -ne '\e[5 q'}
