#!/bin/zsh

# Download plugins
zuse() {
    local plugin_path=${ZPLUG}/${1:t}
    local script_path=(${plugin_path}/(init.zsh|${1:t}.(zsh|plugin.zsh|zsh-theme|sh))(NOL[1]))

    # Create the installation path if needed
    if [[ ! -d ${ZPLUG} ]]; then
        mkdir -p ${ZPLUG}
    fi

    # Install plugins
    if [[ ! -d ${plugin_path} ]]; then
        git clone --recursive ${1}.git ${plugin_path}
    fi

    # Source plugins
    if [[ ! -z ${2} ]]; then
        source ${plugin_path}/${2}
    elif [[ -f ${script_path} ]]; then
        source ${script_path}
    fi
}

# Update plugins
zupdate() {
    for repo in ${ZPLUG}/*; do
        git -C ${repo%} pull
    done
}
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
    echo ${CUTBUFFER} | wl-copy -n
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
