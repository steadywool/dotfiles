# Source configuration
for FILE in ${ZHOME}/*; do
    source ${FILE}
done

# Autosuggestions
zinstall https://github.com/zsh-users/zsh-autosuggestions
source ${ZPLUG}/zsh-autosuggestions/zsh-autosuggestions.zsh

# Custom completion
zinstall https://github.com/zsh-users/zsh-completions
source ${ZPLUG}/zsh-completions/zsh-completions.plugin.zsh

zinstall https://github.com/nix-community/nix-zsh-completions
source ${ZPLUG}/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=(${ZPLUG}/nix-zsh-completions $fpath)

# Syntax highlighting
zinstall https://github.com/zdharma-continuum/fast-syntax-highlighting
source ${ZPLUG}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

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

# Now tab does only completion, not expansion
bindkey '^i' complete-word
