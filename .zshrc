# PLUGINS
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug load

#-----------------------------------------------------------------------------
# THEME
PROMPT=$'%{\e[1;32m%}%n@%m %{\e[1;34m%}%~ %{\e[0;38m%}$%b '
RPROMPT='${vcs_info_msg_0_}'

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}*'
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' actionformats \
    '%F{5}%F{5}[%F{2}%b%F{3}|%F{1}%a%c%u%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}%F{5}[%F{2}%b%c%u%F{5}]%f '

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
setopt prompt_subst
precmd() {
    vcs_info
}

#-----------------------------------------------------------------------------
