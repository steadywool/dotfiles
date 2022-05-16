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
alias flatpak-ln='bash -c "rm /usr/local/bin/* && ln -s /var/lib/flatpak/exports/bin/* /usr/local/bin"'
