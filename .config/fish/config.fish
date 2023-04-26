# VARIABLES
## PATH variable
set PATH $HOME/.local/bin $PATH

## XDG variables
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share

## Editor variables
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux PAGER less

## Wayland variables
set -x _JAVA_AWT_WM_NONREPARENTING 1
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

#-------------------------------------------------------------------
# SWAYWM
## Current TTY
set TTY (tty)

## Start Sway on the first tty
[ $TTY = '/dev/tty1' ] && exec sway
