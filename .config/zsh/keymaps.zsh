#!/bin/zsh

# Vi mode
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# Clipboard
zle -N vi-yank-wl
bindkey -M vicmd 'y' vi-yank-wl

# Search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Now tab does only completion, not expansion
bindkey '^i' complete-word

