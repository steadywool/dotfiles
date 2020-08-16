# History
SAVEHIST=1000
HISTFILE=$HOME/.config/zsh/.histfile 

# Completion
autoload -U compinit && compinit
zstyle ':completion:*' menu select
fpath=($HOME/.config/zsh/plugin/uz/plugins/zsh-completions/src $fpath)

# Plugins
source $HOME/.config/zsh/plugin/uz/uz.zsh
source $HOME/.config/zsh/plugin/zsh-tmux-autostart/zsh-tmux-autostart.zsh
zadd zsh-users/zsh-syntax-highlighting
zadd zsh-users/zsh-completions
zadd zsh-users/zsh-autosuggestions

# Themes
source $HOME/.config/zsh/theme/base-theme.zsh-theme

# Alias
source $HOME/.config/zsh/alias/alias.zsh

# Other
export EDITOR=nvim
