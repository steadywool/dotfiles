# VARIABLES
## PATH variable
set -gx PATH $HOME/.local/bin $HOME/.local/share/flatpak/exports/bin $PATH

## XDG variables
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

## Editor variables
set -gx EDITOR distrobox enter development-box -- nvim
set -gx VISUAL distrobox enter development-box -- nvim
set -gx PAGER less

## Wayland variables
set -x MOZ_ENABLE_WAYLAND 1

#-------------------------------------------------------------------
# INTERACTIVE SHELL
if status is-interactive
    ## Remove fish greeting
    set fish_greeting

    ## Enable vi keys
    fish_vi_key_bindings

    ## Vi mode cursors
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_visual block

    ## Always source aliases
    for i in (ls $__fish_config_dir/aliases/)
        source $__fish_config_dir/aliases/$i
    end
end
