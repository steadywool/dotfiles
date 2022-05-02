# Git
alias g='git'
alias gp='git push --verbose'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -S -am'
alias gca='git commit -S -av'

# Rclone copy & sync
alias backup-copy='rclone copy -P backup: $HOME/Documents/Cours'
alias backup-sync='rclone sync -P $HOME/Documents/Cours backup:'

# Sudo
alias sudo='sudo '

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Create snapshot
alias snap-create='btrfs subvolume snapshot / /.snapshots/`date +%Y%m%d-%H%M%S_snapshot`'

# Flatpak
alias flatpak-rm='rm /usr/local/bin/*'
alias flatpak-ln='ln -s /var/lib/flatpak/exports/bin/* /usr/local/bin'

# QEMU server
alias debian-start='qemu-system-x86_64 -vnc none -monitor stdio -k fr -net nic -net user,hostfwd=tcp::50022-:22,hostfwd=tcp::50080-:80,hostfwd=tcp::58080-:8080 -enable-kvm -m 1G -drive file=debian.cow,format=qcow2'
alias ubuntu-start='qemu-system-x86_64 -vnc none -monitor stdio -k fr -net nic -net user,hostfwd=tcp::60022-:22,hostfwd=tcp::60080-:80,hostfwd=tcp::68080-:8080 -enable-kvm -m 1G -drive file=ubuntu.cow,format=qcow2'
