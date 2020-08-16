
#-----------------------------------------------------------------------------
# PLUGINS
source $HOME/.config/zsh/plugins/uz/uz.zsh

zadd zsh-users/zsh-syntax-highlighting
zadd zsh-users/zsh-completions
zadd zsh-users/zsh-autosuggestions

#-----------------------------------------------------------------------------
# THEMES
source $HOME/.config/zsh/themes/base-theme.zsh-theme

#-----------------------------------------------------------------------------
# ALIAS
source $HOME/.config/zsh/alias/alias.zsh

#-----------------------------------------------------------------------------
# OTHER
export EDITOR=nvim

## history
SAVEHIST=1000
HISTFILE=$HOME/.config/zsh/.histfile 

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

#-----------------------------------------------------------------------------
