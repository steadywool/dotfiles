#!/bin/bash
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