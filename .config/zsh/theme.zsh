# Prompt
autoload -Uz promptinit
promptinit
zstyle ':vcs_info:*' formats '%F{magenta}%b%f %F{green}%8.8i %c%u%f'
zstyle ':vcs_info:*' actionformats '%F{magenta}%b%f %F{red}%a %c%u%f'
zstyle ':vcs_info:*' stagedstr '%F{green}↑'
zstyle ':vcs_info:*' unstagedstr '%F{red}↓'

if [[ $UID != 0 ]]; then
    PROMPT=$'┌%B%F{green}%n@%m%f %F{blue}%~%f%b\n└%B$%b%E '
elif [[ $UID = 0 ]]; then
    PROMPT=$'┌%B%F{red}%n@%m%f %F{blue}%~%f%b\n└%B$%b%E '
fi

RPROMPT='%B${vcs_info_msg_0_}%b'

