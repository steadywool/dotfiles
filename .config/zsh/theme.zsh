# Prompt
autoload -Uz promptinit
promptinit
zstyle ':vcs_info:*' formats '%F{magenta}%b%f %F{green}%8.8i %c%u%f'
zstyle ':vcs_info:*' actionformats '%F{magenta}%b%f %F{red}%a %c%u%f'
zstyle ':vcs_info:*' stagedstr '%F{green}↑'
zstyle ':vcs_info:*' unstagedstr '%F{red}↓'

PS1='%B%F{green}%n@%m%f %F{blue}%~%f %(#.#.$)%b%E '
PS2='%B%F{cyan}%_%f >%b%E '
PS3='%B%F{yellow}?%f >%b%E '
PS4='%B%F{red}%N%f %F{yellow}%i%f >%b%E '

RPS1='%B${vcs_info_msg_0_}%b%E'

unset RPS2 RPROMPT2
