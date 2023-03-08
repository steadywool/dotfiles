#!/bin/zsh

# Vi mode
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# Clipboard
zle -N vi-yank-wl
bindkey -M vicmd 'y' vi-yank-wl

# Cursor
zle -N zle-keymap-select
zle -N zle-line-init

# Search
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Now tab does only completion, not expansion
bindkey '^i' complete-word

