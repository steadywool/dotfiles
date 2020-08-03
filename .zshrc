# History
SAVEHIST=10000
HISTFILE=$HOME/.config/zsh/.histfile 

# Plugins
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/completion/init.zsh
source $HOME/.config/zsh/plugins/command-not-found/init.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/git/git.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-tmux-autostart/zsh-tmux-autostart.zsh

# Themes
source $HOME/.config/zsh/themes/Simple_dir.zsh-theme

# Other
export EDITOR=nvim
