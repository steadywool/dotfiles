# Plugins
source ${ZHOME}/aliases.zsh
source ${ZHOME}/theme.zsh
source ${ZHOME}/zuse.zsh

zuse github.com/zsh-users/zsh-autosuggestions
source ${ZPLUG}/zsh-autosuggestions/zsh-autosuggestions.zsh

zuse github.com/zsh-users/zsh-completions
source ${ZPLUG}/zsh-completions/zsh-completions.plugin.zsh

zuse github.com/zdharma-continuum/fast-syntax-highlighting
source ${ZPLUG}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

zuse github.com/jeffreytse/zsh-vi-mode
source ${ZPLUG}/zsh-vi-mode/zsh-vi-mode.zsh

# Vi mode
bindkey -v
KEYTIMEOUT=1

# History
HISTSIZE=5000
SAVEHIST=5000

# Clipboard
zvm_vi_yank () {
	zvm_yank
	printf %s "${CUTBUFFER}" | wl-copy -n
	zvm_exit_visual_mode
}

# Change cursor
#function zle-keymap-select {
#    if [[ ${KEYMAP} == vicmd || $1 = 'block' ]]; then
#        echo -ne '\e[1 q'
#    else
#        echo -ne '\e[5 q'
#    fi
#}
#
#zle -N zle-keymap-select
#
#echo -ne '\e[5 q'
#precmd_functions+=(echo -ne '\e[5 q')

# Completion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
