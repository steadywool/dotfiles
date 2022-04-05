# Git
alias g='git'
alias gp='git push --verbose'

alias gco='git checkout'

alias ga='git add --verbose'
alias gaa='git add --all --verbose'

alias gc='git commit -S -am'
alias gca='git commit -S -av'

alias gs='git stash'
alias gsp='git stash pop'

alias glog='git log --pretty="%h - %s - %ad" --relative-date -20'

# Rclone Gdrive copy & sync
alias gdrive-copy='rclone copy -P gdrive: $HOME/Documents/Cours'
alias gdrive-sync='rclone sync -P $HOME/Documents/Cours gdrive:'

# Tmux
alias tm='tmux attach || tmux new'

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# QEMU server
alias debian-start='qemu-system-x86_64 -vnc none -monitor stdio -k fr -net nic -net user,hostfwd=tcp::50022-:22,hostfwd=tcp::50080-:80,hostfwd=tcp::58080-:8080 -enable-kvm -m 1G -drive file=debian.cow,format=qcow2'
alias ubuntu-start='qemu-system-x86_64 -vnc none -monitor stdio -k fr -net nic -net user,hostfwd=tcp::60022-:22,hostfwd=tcp::60080-:80,hostfwd=tcp::68080-:8080 -enable-kvm -m 1G -drive file=ubuntu.cow,format=qcow2'
