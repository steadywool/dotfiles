# ZSH
ZHOME=${HOME}/.config/zsh
ZPLUG=${HOME}/.config/zsh/plugins

HISTFILE=${HOME}/.zhistory

#export TMOUT=900

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

# Proxy
#export http_proxy=
#export https_proxy=

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1
export LIBSEAT_BACKEND=logind

# Bemenu
export BEMENU_OPTS="-i -H '23' --fn 'JetBrains Mono Regular 9' --tb '#1d2021' --tf '#ebdbb2' --fb '#1d2021' --ff '#ebdbb2' --cf '#ebdbb2' --nb '#1d2021' --nf '#ebdbb2' --ab '#32302f' --af '#ebdbb2' --hb '#fabd2f' --hf '#1d2021'"
