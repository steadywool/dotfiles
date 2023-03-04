# Functions
source ${ZSH_CONFIG_DIR}/functions.zsh

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions

# Custom completion
zuse https://github.com/zsh-users/zsh-completions
zuse https://github.com/nix-community/nix-zsh-completions
fpath=(${ZSH_PLUGIN_DIR}/nix-zsh-completions $fpath)

# History
setopt inc_append_history
setopt hist_ignore_dups

# Aliases, Completion & custom prompt
source ${ZSH_CONFIG_DIR}/aliases.zsh
source ${ZSH_CONFIG_DIR}/completion.zsh
source ${ZSH_CONFIG_DIR}/bindkeys.zsh
source ${ZSH_CONFIG_DIR}/prompt.zsh

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting
