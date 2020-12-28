# PLUGINS
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "woefe/git-prompt.zsh"

zplug load

#-----------------------------------------------------------------------------
# THEME
PROMPT=$'%{\e[1;32m%}%n@%m %{\e[1;34m%}%~ %{\e[0;38m%}$(gitprompt)$%b '

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
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}~"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}ok"

#-----------------------------------------------------------------------------
