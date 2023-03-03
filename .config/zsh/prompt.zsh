#!/bin/zsh

# Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' formats '%F{yellow}(%b)%f %m%c%u'
zstyle ':vcs_info:*' actionformats '%F{yellow}(%b)%f %F{cyan}(%a)%f %m%c%u'
zstyle ':vcs_info:*' stagedstr '%F{green}✓%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}✗%f'

# Prompt
autoload -Uz promptinit
promptinit

PS1='%B%(!.%F{red}.%F{green})%n@%m%f %F{blue}%(4~|.../%3~|%~)%f ❯ %b'
RPS1='%B${vcs_info_msg_0_} %F{red}%(?..[%? ⨯])%f%b%E'

