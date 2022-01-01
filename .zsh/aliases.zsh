# Git
alias g='git'
alias gp='git push --verbose'

alias gco='git checkout'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -am'
alias gca='git commit -av'

alias gs='git stash'
alias gsp='git stash pop'

alias glog='git log --pretty="%h - %s - %ad" --relative-date -20'

# Pacman
alias afetch='echo "Packages:" `pacman -Q | wc -l`'

# Ping
alias aping='ping -c 1 www.gentoo.org'

# Rclone Gdrive copy & sync
alias gdrive-copy='rclone copy -P gdrive: $HOME/Gdrive'
alias gdrive-sync='rclone sync -P $HOME/Gdrive gdrive:'

# Ls
alias -g ls='ls --color=auto'
alias lsa="ls -A"

# Udiskie
alias uda='udiskie-umount -a'
