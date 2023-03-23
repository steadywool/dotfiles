# ZSH
ZSH_CONFIG_DIR=${HOME}/.config/zsh
ZSH_PLUGIN_DIR=${HOME}/.local/share/zsh/plugins

# Key timeout
KEYTIMEOUT=1

# History
HISTFILE=${HOME}/.zhistory
HISTSIZE=5000
SAVEHIST=5000

# Env variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# PATH
export PATH=${PATH}:${HOME}/.local/bin

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind

# GPG Agent
export GPG_TTY=$(tty)
