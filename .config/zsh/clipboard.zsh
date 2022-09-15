#!/bin/zsh

# Clipboard
zvm_vi_yank () {
	zvm_yank
	printf %s ${CUTBUFFER} | wl-copy -n
	zvm_exit_visual_mode
}
