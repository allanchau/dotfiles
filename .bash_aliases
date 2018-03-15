# dotfiles
alias dotfiles='cd $DOTFILES_LOCATION'

# general
alias cleanuporig='hub clean -f *.orig && hub clean -f **/*.orig'

# command shortcuts
alias lsl='ls -l'
alias lsa='ls -la'

# dir traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# vagrant shortcuts
alias v='vagrant'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias vu='vagrant up'

# git command shortcuts
alias ga='hub add -A'
alias gav='hub add */**/version.json && hub add package.json'
alias gb='hub branch'
alias gd='hub diff'
alias gdt='hub difftool'
alias gco='hub checkout'
alias gbc='hub checkout -b'
alias gc='hub commit'
alias gca='hub commit --amend --no-edit'
alias gf='hub fetch'
alias gfa='hub fetch --all && hub status'
alias gl='hub log'
alias gt='hub log --pretty=oneline --abbrev-commit --name-status'
alias gm='hub merge'
alias gmt='hub mergetool'
alias gpl='hub pull --rebase'
alias gp='hub push'
alias gpo='hub push -u origin'
alias gpf='hub push --follow-tags'
alias gr='hub remote'
alias gs='hub status -s'

# git command shortcuts via functions
function gbco () {
	hub checkout -b "$1" && hub push -u origin "$1"
}

function gtag () {
	hub tag -a "$1" -m "$2" && hub push origin "$1"
}

function gbdo () {
	hub branch -D "$1" && hub push origin ":$1"
}
alias g='hub'
