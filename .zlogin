# Launch Sway
if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
    exec sway
fi

# Launch Tmux
if [[ -n $PS1 ]] && [[ -z $TMUX ]]; then
    tmux attach || tmux new
fi
