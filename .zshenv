# ZSH
ZHOME=${HOME}/.config/zsh
ZPLUG=${HOME}/.config/zsh/plugins

HISTFILE=${HOME}/.zhistory

# Variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# SSH
export SSH_AUTH_SOCK

# GPG
export GPG_TTY=$(tty)

# PATH
export PATH=${PATH}:/var/lib/flatpak/exports/bin
export PATH=${PATH}:${HOME}/.local/bin

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1
