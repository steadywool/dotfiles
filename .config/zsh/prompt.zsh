#!/bin/zsh

setopt prompt_subst
autoload -Uz promptinit
promptinit

PS1='%B%(!.%F{red}.%F{green})%n@%m%f %F{blue}%(4~|.../%3~|%~)%f ❯ %b'
RPS1='%B${vcs_info_msg_0_} %F{red}%(?..[%? ⨯])%f%b%E'
