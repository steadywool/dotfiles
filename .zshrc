
#-----------------------------------------------------------------------------
# PLUGINS
source $HOME/.config/zsh/plugin/uz/uz.zsh
source $HOME/.config/zsh/plugin/zsh-tmux-autostart/zsh-tmux-autostart.zsh
zadd zsh-users/zsh-syntax-highlighting
zadd zsh-users/zsh-completions
zadd zsh-users/zsh-autosuggestions

#-----------------------------------------------------------------------------
# THEMES
source $HOME/.config/zsh/theme/base-theme.zsh-theme

#-----------------------------------------------------------------------------
# ALIAS
source $HOME/.config/zsh/alias/alias.zsh

#-----------------------------------------------------------------------------
# OTHER
export EDITOR=nvim
export UZ_PLUGIN_PATH=${UZ_PATH}/plugins

# History
SAVEHIST=1000
HISTFILE=$HOME/.config/zsh/.histfile 

## completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

#-----------------------------------------------------------------------------
