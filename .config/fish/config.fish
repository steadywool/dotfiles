# Always source functions
for i in (ls $__fish_config_dir/functions/)
    source $__fish_config_dir/functions/$i
end

# Remove fish greeting
set fish_greeting

# PATH variable
set PATH $HOME/.local/bin $HOME/.local/share/flatpak/exports/bin $PATH

# XDG variables
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share

# Editor variables
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux PAGER less

# Wayland variables
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x MOZ_ENABLE_WAYLAND 1
