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

# pacman
alias afetch='pacman -Q | wc -l'

# ping
alias aping='ping -c 1 www.gentoo.org'

# mtp mount & unmount
alias amtp-mount='aft-mtp-mount $HOME/Mount'
alias amtp-unmount='fusermount -u $HOME/Mount'

#-----------------------------------------------------------------------------
# ZSH
## Export variables
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox

## Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

## History
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

## completion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

## Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true

## Prompt
autoload -Uz promptinit
promptinit
PROMPT=$'%B%F{green}%n@%m%f %F{blue}%~%f $%b%E '
RPROMPT='%B${vcs_info_msg_0_}%b'

zstyle ':vcs_info:*' formats '%F{magenta}%b%f %F{green}%8.8i %c%u%f'
zstyle ':vcs_info:*' actionformats '%F{magenta}%b%f %F{red}%a %c%u%f'
zstyle ':vcs_info:*' stagedstr '%F{green}↑'
zstyle ':vcs_info:*' unstagedstr '%F{red}↓'


