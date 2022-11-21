#!/bin/zsh
# Git
alias g='git'
alias gp='git push --verbose'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -S -am'
alias gca='git commit -S -av'

# Tmux
alias ta='tmux attach'
alias td='tmux detach'
alias tn='tmux new'

# Rclone copy & sync
alias mega_copy='rclone copy -P backup: $HOME/Documents/Cours'
alias mega_sync='rclone sync -P $HOME/Documents/Cours backup:'

# Sudo
alias sudo='sudo '

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color'

# Create snapshot
alias snap_root='btrfs subvolume snapshot / /.snapshots/`date +%Y%m%d-%H%M%S_root`'
alias snap_home='btrfs subvolume snapshot /home /.snapshots/`date +%Y%m%d-%H%M%S_home`'

# Performance
alias cpu_performance='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpu_powersave='echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpu_schedutil='echo schedutil | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpu_freq='watch -n 1 "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor && cat /proc/cpuinfo | grep \"cpu MHz\""'

# Usbguard
alias usb_list='usbguard list-devices -t'
alias usb_allow='usbguard allow-device'

# Scarab (Hollow Knight)
alias scarab='/opt/scarab/Scarab'
