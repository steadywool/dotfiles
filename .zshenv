# XDG directories
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export PATH="${PATH}:${HOME}/.local/bin"

# ZSH
export ZSH_CONFIG_DIR="${XDG_CONFIG_HOME}/zsh"
export ZSH_PLUGIN_DIR="${XDG_DATA_HOME}/zsh/plugins"

# Key timeout
export KEYTIMEOUT=1

# History
export HISTFILE="${XDG_DATA_HOME}/zsh/history"
export HISTSIZE=5000
export SAVEHIST=5000

# Env variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# Wayland / Sway
if [[ ${XDG_SESSION_DESKTOP} = 'sway' ]] ;
    export _JAVA_AWT_WM_NONREPARENTING=1
fi

# GPG Agent
export GPG_TTY=$(tty)
