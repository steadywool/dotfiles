#!/bin/zsh

# Create BTRFS snapshots
snapshot() {
    if [[ ! -z ${1} ]]; then
        sudo btrfs subvolume snapshot -r ${1} /.snapshots/`date +%s`_${1//\/}
    else
        sudo btrfs subvolume snapshot -r / /.snapshots/`date +%s`
    fi
}

# Use Wl-clipboard with ZSH
vi-yank-wl() {
    zle vi-yank
    echo "$CUTBUFFER" | wl-copy -n
}

# Change the cursor when changing of Vi mode
zle-keymap-select() {
    if [[ ${KEYMAP} == 'vicmd' ]] || [[ ${1} = 'block' ]]; then
        echo -ne ${cursor_block}
    else
        echo -ne ${cursor_beam}
    fi
}

zle-line-init() {
    echo -ne ${cursor_beam}
}
