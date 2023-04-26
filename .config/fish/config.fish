if status is-interactive
    # Remove fish greeting
    set fish_greeting

    # Enable vi keys
    fish_vi_key_bindings

    # Vi mode cursors
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_visual block

    # Always source aliases
    for i in (ls $__fish_config_dir/aliases/)
        source $__fish_config_dir/aliases/$i
    end
end
