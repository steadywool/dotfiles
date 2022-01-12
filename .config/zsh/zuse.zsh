#!/bin/zsh

# Download plugins
zuse() {
    local url=$1 module=${1:t}
    local module_path=$ZPLUG/$module

    # Create the installation path if needed
    if [[ ! -d $ZPLUG ]]; then
        mkdir -p $ZPLUG
    fi

    # Install plugins
    if [[ ! -d $module_path ]]; then
        git clone --recursive https://$url.git $module_path
    fi
}

# Update plugins
zupdate() {
    for repo in ${ZPLUG}/*; do
        git -C ${repo%} pull
    done
}
