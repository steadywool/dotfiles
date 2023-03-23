# Source configuration
for FILE in ${ZSH_CONFIG_DIR}/*; do
    source ${FILE}
done

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions

# Custom completion
zuse https://github.com/zsh-users/zsh-completions

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting

# Options
setopt inc_append_history
setopt hist_ignore_dups
setopt autocd
