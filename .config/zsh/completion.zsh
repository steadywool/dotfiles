#!/bin/zsh

# Completion
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format '%B%F{blue}-- %d --%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' use-cache true
zstyle ':completion:*' rehash true
