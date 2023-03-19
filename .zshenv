# ZSH
ZSH_CONFIG_DIR=${HOME}/.config/zsh
ZSH_PLUGIN_DIR=${HOME}/.config/zsh/plugins

# Vi Mode
KEYTIMEOUT=1

# History
HISTFILE=${HOME}/.zhistory
HISTSIZE=5000
SAVEHIST=5000

# Prompt
PS1='%B%(!.%F{red}.%F{green})%n@%m%f %F{blue}%(4~|.../%3~|%~)%f ❯ %b'
RPS1='%B${vcs_info_msg_0_} %F{red}%(?..[%? ⨯])%f%b%E'

# Variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# GPG Agent
export GPG_TTY=$(tty)

# PATH
export PATH=${PATH}:${HOME}/.local/bin

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind
