# ZSH
ZHOME=${HOME}/.config/zsh
ZPLUG=${HOME}/.config/zsh/plugins

HISTFILE=${HOME}/.zhistory

# Variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# PATH
export PATH=${PATH}:/var/lib/flatpak/exports/bin
export PATH=${PATH}:${HOME}/.local/bin

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind
