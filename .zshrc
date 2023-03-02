# Source configuration
for FILE in ${ZHOME}/*; do
    source ${FILE}
done

# Autosuggestions
zuse https://github.com/zsh-users/zsh-autosuggestions
source ${ZPLUG}/zsh-autosuggestions/zsh-autosuggestions.zsh

# Custom completion
zuse https://github.com/zsh-users/zsh-completions
source ${ZPLUG}/zsh-completions/zsh-completions.plugin.zsh

zuse https://github.com/nix-community/nix-zsh-completions
source ${ZPLUG}/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=(${ZPLUG}/nix-zsh-completions $fpath)

# Vi mode
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char
KEYTIMEOUT=1

# History
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history
setopt hist_ignore_dups

# Completion
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format '%B%F{blue}-- %d --%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' use-cache true
zstyle ':completion:*' rehash true

# Now tab does only completion, not expansion
bindkey '^i' complete-word

# Vcs
autoload -Uz vcs_info
precmd() {vcs_info}
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' formats '%F{yellow}(%b)%f %m%c%u'
zstyle ':vcs_info:*' actionformats '%F{yellow}(%b)%f %F{cyan}(%a)%f %m%c%u'
zstyle ':vcs_info:*' stagedstr '%F{green}✓%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}✗%f'

# Prompt
autoload -Uz promptinit
promptinit

PS1='%B%(!.%F{red}.%F{green})%n@%m%f %F{blue}%(4~|.../%3~|%~)%f ❯ %b'
RPS1='%B${vcs_info_msg_0_} %F{red}%(?..[%? ⨯])%f%b%E'

# Syntax highlighting
zuse https://github.com/zdharma-continuum/fast-syntax-highlighting
source ${ZPLUG}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

