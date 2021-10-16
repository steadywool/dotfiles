#!/bin/zsh

# Installation path
ZPATH=$HOME/.zuse/plugins

# Download plugins
zuse() {
    local url=$1 module=${1:t}
    local plugin_path=$ZPATH/$module

    # Create the installation path if needed
    if [ ! -d $ZPATH ]; then
        mkdir -p $ZPATH
    fi

    # Install plugins
    if [ ! -d $plugin_path ]; then
        git clone --recursive https://github.com/$url.git $plugin_path
    fi
}

# Update plugins
zupdate() {
    for repo in ${ZPATH}/*; do
        git -C ${repo%} pull
    done
}
