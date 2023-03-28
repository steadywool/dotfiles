#!/bin/zsh

autoload -Uz compinit
compinit
zmodload zsh/complist

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*' format '%B%F{blue}-- %d --%f%b'
zstyle ':completion:*:corrections' format '%B%F{yellow}-- %d --%f%b'
zstyle ':completion:*:warnings' format '%B%F{red}-- no matches found --%f%b'
zstyle ':completion:*' group-name ''

zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path "${HOME}/.cache/zsh/.zcompcache"

zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' rehash true
