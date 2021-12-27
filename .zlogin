# Launch Sway
if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
    exec sway
fi

if [ -n $SSH_CLIENT ]; then
	tmux attach || tmux new
fi
