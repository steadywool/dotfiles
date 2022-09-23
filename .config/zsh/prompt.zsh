#!/bin/zsh

# Vcs
zstyle ':vcs_info:*' formats '%F{blue}(%s: %b)%f %F{yellow}%8.8i%f %m%c%u'
zstyle ':vcs_info:*' actionformats '%F{blue}(%s: %b)%f %F{yellow}%8.8i%f %F{cyan}(%a)%f %m%c%u'
zstyle ':vcs_info:*' stagedstr '%F{green}*'
zstyle ':vcs_info:*' unstagedstr '%F{red}+'

# Prompt
autoload -Uz promptinit
promptinit

PS1='┌%B%F{green}%n@%m%f %F{blue}%~%f %F{magenta}[%T]%f
└%(#.#.$)%b%E '

RPS1='%B${vcs_info_msg_0_}%b%E'
