# ALIAS
## git
alias g='git'
alias gp='git push --verbose'

alias gb='git branch --verbose'
alias gco='git checkout'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -am'
alias gca='git commit -av'

alias gr='git reset --soft HEAD^'
alias gcr='git commit --amend --verbose'

alias gs='git status -s'
alias glog='git log --pretty="%h - %s - %ad" --relative-date -10'

# pacman
alias afetch='pacman -Q | wc -l'

# ping
alias aping='ping -c 1 www.gentoo.org'

# mtp mount & unmount
alias amtp-mount='aft-mtp-mount $HOME/Mount'
alias amtp-unmount='fusermount -u $HOME/Mount'

# rclone gdrive copy & sync
alias gdrive-copy='rclone copy -P gdrive: $HOME/Gdrive'
alias gdrive-sync='rclone sync -P $HOME/Gdrive gdrive:'

# ls
alias ls='ls --color=auto'

# qemu ubuntu
alias ubuntu='qemu-system-x86_64 -enable-kvm -m 2G -drive file=ubuntu.img,format=qcow2'
