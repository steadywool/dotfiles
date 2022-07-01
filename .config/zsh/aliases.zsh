# Git
alias g='git'
alias gp='git push --verbose'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -S -am'
alias gca='git commit -S -av'

# Rclone copy & sync
alias mega-copy='rclone copy -P backup: $HOME/Documents/Cours'
alias mega-sync='rclone sync -P $HOME/Documents/Cours backup:'

# Sudo
alias sudo='sudo '

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color'

# Create snapshot
alias snap-create='btrfs subvolume snapshot / /.snapshots/`date +%Y%m%d-%H%M%S_snapshot`'

# Scarab (Hollow Knight)
alias scarab='/opt/scarab/Scarab'
