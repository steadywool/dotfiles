# Launch Sway
if [[ -z $DISPLAY ]] && [[ $TTY = "/dev/tty1" ]]; then
    exec sway
fi

# Launch Tmux
if [[ -n $PS1 ]] && [[ -z $TMUX ]] && [[ -n $SSH_CONNECTION ]]; then
    tmux attach || tmux new
fi
