# Functions
source ${ZSH_CONFIG_DIR}/functions.zsh

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions

# Custom completion
zuse https://github.com/zsh-users/zsh-completions
zuse https://github.com/nix-community/nix-zsh-completions
fpath=(${ZSH_PLUGIN_DIR}/nix-zsh-completions $fpath)

# Aliases, bindkeys, options & zstyles
source ${ZSH_CONFIG_DIR}/aliases.zsh
source ${ZSH_CONFIG_DIR}/options.zsh
source ${ZSH_CONFIG_DIR}/keymaps.zsh
source ${ZSH_CONFIG_DIR}/zstyles.zsh

# Vcs
autoload -Uz vcs_info
precmd() {vcs_info}

# Prompt
autoload -Uz promptinit
promptinit

# Completion
autoload -Uz compinit
compinit

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting
