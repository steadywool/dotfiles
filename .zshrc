# History
SAVEHIST=1000
HISTFILE=$HOME/.config/zsh/.histfile 

# Plugins
source $HOME/.config/zsh/plugin/uz/uz.zsh
source $HOME/.config/zsh/plugin/zsh-tmux-autostart/zsh-tmux-autostart.zsh
source $HOME/.config/zsh/plugin/completion/init.zsh
zadd zsh-users/zsh-syntax-highlighting
zadd zsh-users/zsh-completions
zadd zsh-users/zsh-autosuggestions

# Themes
source $HOME/.config/zsh/theme/base-theme.zsh-theme

# Alias
source $HOME/.config/zsh/alias/alias.zsh

# Other
export EDITOR=nvim
