# Color
alias ip="ip --color"
alias grep="grep --color=auto"
alias ls="ls --color=auto"

# Git
alias g="git"
alias ga="git add --all --verbose"
alias gc="git commit -am"
alias gp="git push"
alias gl="git pull"

# Firewalld
function nmwall() {
    nmcli connection modify ${1} connection.zone ${2}
}

# Usbguard
alias usbl="usbguard list-devices -t"
alias usba="usbguard allow-device"
alias usbp="usbguard allow-device --permanent"
