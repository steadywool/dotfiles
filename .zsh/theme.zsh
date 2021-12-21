# Prompt
autoload -Uz promptinit
promptinit
zstyle ':vcs_info:*' formats '%F{magenta}%b%f %F{green}%8.8i %c%u%f'
zstyle ':vcs_info:*' actionformats '%F{magenta}%b%f %F{red}%a %c%u%f'
zstyle ':vcs_info:*' stagedstr '%F{green}↑'
zstyle ':vcs_info:*' unstagedstr '%F{red}↓'

PROMPT=$'%B%F{green}%n@%m%f %F{blue}%~%f %#%b%E '
RPROMPT='%B${vcs_info_msg_0_}%b'

