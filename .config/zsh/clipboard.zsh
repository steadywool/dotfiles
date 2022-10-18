#!/bin/zsh

# Clipboard
function vi-yank-wl {
    zle vi-yank
   echo "$CUTBUFFER" | wl-copy -n
}

zle -N vi-yank-wl
bindkey -M vicmd 'y' vi-yank-wl
