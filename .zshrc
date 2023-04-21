# Autostart Tmux
if [[ -z ${TMUX} ]]; then
    tmux attach || tmux new
fi

# Functions
for FILE in ${ZSH_CONFIG_DIR}/functions/*; do
    source ${FILE}
done

# Custom completion
zuse https://github.com/zsh-users/zsh-completions

# Completion
source ${ZSH_CONFIG_DIR}/completion.zsh

# Keymaps
source ${ZSH_CONFIG_DIR}/keymaps.zsh

# Prompt
source ${ZSH_CONFIG_DIR}/vcs.zsh

# Prompt
source ${ZSH_CONFIG_DIR}/prompt.zsh

# Aliases
source ${ZSH_CONFIG_DIR}/aliases.zsh

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting

# Fuzzy Finder
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# Options
setopt inc_append_history
setopt hist_ignore_dups
setopt autocd
