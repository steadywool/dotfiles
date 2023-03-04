# Functions
source ${ZHOME}/functions.zsh

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions

# Custom completion
zuse https://github.com/zsh-users/zsh-completions
zuse https://github.com/nix-community/nix-zsh-completions
fpath=(${ZPLUG}/nix-zsh-completions $fpath)

# Vi mode
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char
KEYTIMEOUT=1

# Clipboard
zle -N vi-yank-wl
bindkey -M vicmd 'y' vi-yank-wl

# Cursor
cursor_block='\e[1 q'
cursor_beam='\e[5 q'
zle -N zle-keymap-select
zle -N zle-line-init

# Search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# History
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history
setopt hist_ignore_dups

# Aliases, Completion & custom prompt
source ${ZHOME}/aliases.zsh
source ${ZHOME}/completion.zsh
source ${ZHOME}/prompt.zsh

# Now tab does only completion, not expansion
bindkey '^i' complete-word

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting
