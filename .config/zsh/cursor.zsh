#!/bin/zsh

# Cursor
cursor_block='\e[1 q'
cursor_beam='\e[5 q'

function zle-keymap-select {
    if [[ ${KEYMAP} == 'vicmd' ]] || [[ ${1} = 'block' ]]; then
        echo -ne ${cursor_block}
    else
        echo -ne ${cursor_beam}
    fi
}

zle-line-init() {
    echo -ne ${cursor_beam}
}

zle -N zle-keymap-select
zle -N zle-line-init
