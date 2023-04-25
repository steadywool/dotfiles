# Current TTY
set TTY (tty)

# Start Sway on the first tty
[ $TTY = '/dev/tty1' ] && exec sway
