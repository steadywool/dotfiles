# ALIAS
## git
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

# pacman
alias afetch='pacman -Q | wc -l'

# ping
alias aping='ping -c 1 www.gentoo.org'

# rclone gdrive copy & sync
alias gdrive-copy='rclone copy -P gdrive: $HOME/Gdrive'
alias gdrive-sync='rclone sync -P $HOME/Gdrive gdrive:'

# ls
alias -g ls='ls --color=auto'
alias lsa="ls -A"

# qemu ubuntu
alias ubuntu='qemu-system-x86_64 -enable-kvm -m 2G -drive file=ubuntu.cow,format=qcow2'
