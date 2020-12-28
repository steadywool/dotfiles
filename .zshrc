# PLUGINS
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug load

#-----------------------------------------------------------------------------
# THEME
PROMPT=$'%B%F{green}%n@%m%f %F{blue}%~%f ${vcs_info_msg_0_}$%b%E '

zstyle ':vcs_info:*' formats '%F{magenta}%b%c%u%f '
zstyle ':vcs_info:*' actionformats '%F{magenta}%a%c%u%f '
zstyle ':vcs_info:*' unstagedstr '%F{red}!'
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'

#-----------------------------------------------------------------------------
# ALIAS
## git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gav='git add --verbose'
alias gc='git commit -v'
alias gl='git pull'
alias gm='git merge'
alias gp='git push'

#-----------------------------------------------------------------------------
# OTHER
export EDITOR=nvim
export VISUAL=nvim

HISTSIZE=1000
SAVEHIST=1000

## completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

## tmux
if [ -z "$TMUX" ]; then
	tmux attach -t 0 || tmux new -s 0
fi

## Vcs
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
precmd() {
    vcs_info
}
setopt prompt_subst

#-----------------------------------------------------------------------------
