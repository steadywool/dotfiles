# ZSH
ZSH_CONFIG_DIR=${HOME}/.config/zsh
ZSH_PLUGIN_DIR=${HOME}/.config/zsh/plugins

# Vi Mode
KEYTIMEOUT=1

# History
HISTFILE=${HOME}/.zhistory
HISTSIZE=5000
SAVEHIST=5000

# Variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# GPG Agent
export GPG_TTY=$(tty)

# PATH
export PATH=${PATH}:${HOME}/.local/bin:${HOME}/.nix-profile/bin
export XDG_DATA_DIRS=${XDG_DATA_DIRS}:${HOME}/.nix-profile/share

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind
