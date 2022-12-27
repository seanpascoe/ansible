alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias gitrb="git branch | grep -v "master" | xargs git branch -D"
alias myip='echo $(curl -s ifconfig.me)'
alias mylip='hostname -I | awk "{print $1}"'
