## Launch Sway
if [[ -z ${DISPLAY} ]] && [[ ${TTY} = "/dev/tty1" ]] && [[ ! -z $(command -v sway) ]]; then
    exec sway
fi
