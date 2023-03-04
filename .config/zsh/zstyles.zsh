#!/bin/zsh

# Vcs
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{yellow}(%b)%f %m%c%u'
zstyle ':vcs_info:*' actionformats '%F{yellow}(%b)%f %F{cyan}(%a)%f %m%c%u'
zstyle ':vcs_info:*' stagedstr '%F{green}✓%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}✗%f'

# Completion
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format '%B%F{blue}-- %d --%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' use-cache true
zstyle ':completion:*' rehash true
