## Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi

## Cursor shape
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}

zle -N zle-keymap-select
echo -ne '\e[5 q'
preexec() {echo -ne '\e[5 q'}
