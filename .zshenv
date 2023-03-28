# ZSH
export ZSH_CONFIG_DIR="${HOME}/.config/zsh"
export ZSH_PLUGIN_DIR="${HOME}/.local/share/zsh/plugins"

# Key timeout
export KEYTIMEOUT=1

# History
export HISTFILE="${HOME}/.zhistory"
export HISTSIZE=5000
export SAVEHIST=5000

# Env variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# PATH
export PATH="${PATH}:${HOME}/.local/bin"

# Wayland / Sway
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind

# GPG Agent
export GPG_TTY=$(tty)

