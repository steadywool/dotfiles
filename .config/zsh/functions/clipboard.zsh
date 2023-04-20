#!/bin/zsh

# Use Wl-clipboard with ZSH
vi-yank-wl() {
    zle vi-yank
    echo ${CUTBUFFER} | wl-copy -n
}
