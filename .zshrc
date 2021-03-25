# PLUGINS
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug load

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
# ZSH
## Default
export EDITOR=nvim
export VISUAL=nvim

## Tmux
if [ -z "$TMUX" ]; then
	tmux attach -t 0 || tmux new -s 0
fi

## History
HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100

## completion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

## Prompt
autoload -Uz promptinit
promptinit
PROMPT=$'┌%B%F{green}%n@%m%f %F{blue}%~%f ${vcs_info_msg_0_}%b
└%B$%b%E '

## Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{magenta}%b%u%c%f %F{white}%i%f '
zstyle ':vcs_info:*' actionformats '%F{magenta}%b%u%c%f %F{white}%i%f '
zstyle ':vcs_info:*' unstagedstr '%F{red}!'
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'

#-----------------------------------------------------------------------------
