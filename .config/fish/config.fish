# PATH variable
set -gx PATH $HOME/.local/bin $PATH

## XDG variables
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

## Editor variables
set -gx EDITOR vi
set -gx VISUAL vi
set -gx PAGER less

# Interactive
if status is-interactive
    # Remove fish greeting
    set fish_greeting
end
