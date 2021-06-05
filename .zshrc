# PLUGINS
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
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
alias glog='git log --pretty="%h - %s - %ad" --relative-date -10'

# brightness
alias br='sudo $HOME/Script/brightness.sh'

# pacman
alias fetch='pacman -Q | wc -l'

#-----------------------------------------------------------------------------
# ZSH
## Default
export EDITOR=nvim
export VISUAL=nvim

## Tmux
if [ -z "$TMUX" ]; then
	tmux attach -t 0 || tmux new -s 0
fi

# Vi mode
bindkey -v
export KEYTIMEOUT=1

## History
HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=500

## completion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

## Prompt
autoload -Uz promptinit
promptinit
PROMPT=$'┌%B%F{green}%n@%m%f %F{blue}%~%f%b
└%B$%b%E '

#-----------------------------------------------------------------------------
