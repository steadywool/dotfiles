#!/bin/zsh

# Download plugins
zuse() {
    # Create the installation path if needed
    if [[ ! -d ${ZSH_PLUGIN_DIR} ]]; then
        mkdir -p ${ZSH_PLUGIN_DIR}
    fi

    # Install plugins
    if [[ ! -d ${ZSH_PLUGIN_DIR}/${1:t} ]]; then
        git clone --recursive ${1}.git ${ZSH_PLUGIN_DIR}/${1:t}
    fi

    # Source plugins
    local plugin=(${ZSH_PLUGIN_DIR}/${1:t}/(init.zsh|${1:t}.(zsh|plugin.zsh|zsh-theme|sh))(NOL[1]))
    if [[ -f ${plugin} ]]; then
        source ${plugin}
    fi
}

# Update plugins
zupdate() {
    for repo in ${ZSH_PLUGIN_DIR}/*; do
        git -C ${repo%} pull
    done
}

# Create BTRFS snapshots
snapshot() {
    if [[ -z ${1//\/} ]]; then
        sudo btrfs subvolume snapshot -r ${1} /.snapshots/`date +%s`
    else
        sudo btrfs subvolume snapshot -r ${1} /.snapshots/`date +%s`_${1//\/}
    fi
}

# Use Wl-clipboard with ZSH
vi-yank-wl() {
    zle vi-yank
    echo ${CUTBUFFER} | wl-copy -n
}

# Change the cursor when changing of Vi mode
zle-keymap-select() {
    if [[ ${KEYMAP} == 'vicmd' ]]; then
        echo -ne '\e[1 q' # Block
    else
        echo -ne '\e[5 q' # Beam
    fi
}

# Use the beam cursor by default
zle-line-init() {
    echo -ne '\e[5 q' # Beam
}
