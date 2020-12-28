# PLUGINS
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "woefe/git-prompt.zsh"

zplug load

#-----------------------------------------------------------------------------
# THEME
PROMPT=$'%{\e[1;32m%}%n@%m %{\e[1;34m%}%~ %{\e[0;38m%}${vcs_info_msg_0_}%{$reset_color%}$%b '

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

## Git Prompt
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="] "
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX=""
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX=""
ZSH_THEME_GIT_PROMPT_BEHIND="↓ "
ZSH_THEME_GIT_PROMPT_AHEAD="↑ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}~"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}ok"

autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats \
    '%F{5}%F{5}[%F{2}%b%F{3}|%F{1}%a%c%u%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}%F{5}[%F{2}%b%c%u%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn

theme_precmd () {
    vcs_info
}

setopt prompt_subst
autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd
#-----------------------------------------------------------------------------
