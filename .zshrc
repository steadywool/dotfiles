# Plugins
source ${ZHOME}/aliases.zsh
source ${ZHOME}/theme.zsh
source ${ZHOME}/zuse.zsh

zuse github.com/zsh-users/zsh-autosuggestions
source ${ZPLUG}/zsh-autosuggestions/zsh-autosuggestions.zsh

zuse github.com/zsh-users/zsh-completions
source ${ZPLUG}/zsh-completions/zsh-completions.plugin.zsh

zuse github.com/jeffreytse/zsh-vi-mode
source ${ZPLUG}/zsh-vi-mode/zsh-vi-mode.zsh

zuse github.com/zdharma-continuum/fast-syntax-highlighting
source ${ZPLUG}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Vi mode
bindkey -v
KEYTIMEOUT=1

# History
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history

# Clipboard
zvm_vi_yank () {
	zvm_yank
	printf %s ${CUTBUFFER} | wl-copy -n
	zvm_exit_visual_mode
}

# Completion
autoload -Uz compinit
compinit

unsetopt menu_complete
setopt auto_menu
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose true
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' group-name ''

# Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
