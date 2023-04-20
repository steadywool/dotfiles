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
