# Autostart Tmux at zsh launch
if [ -z "$TMUX" ]; then
	tmux attach -t TMUX || tmux new -s TMUX
fi
