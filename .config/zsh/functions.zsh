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

# Install external stuff to my config
zinit() {
    # Ranger Devicons
    local ranger_dev_dir=${HOME}/.config/ranger/plugins/ranger_devicons
    if [[ ! -d ${ranger_dev_dir} ]]; then
        git clone https://github.com/alexanderjeurissen/ranger_devicons.git ${ranger_dev_dir}
    fi

    # Packer.nvim
    local packer_dir=${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim
    if [[ ! -d ${packer_dir} ]]; then
        git clone https://github.com/wbthomason/packer.nvim.git ${packer_dir}
    fi

    # Yay
    if [[ `command -v yay` == '' ]]; then
        git clone https://aur.archlinux.org/yay-bin.git ${HOME}/yay-bin
        cd ${HOME}/yay-bin
        makepkg -si
    fi
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
