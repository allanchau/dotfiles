# dotfiles
alias dotfiles='cd $DOTFILES_LOCATION'

# general
alias cleanuporig='git clean -f *.orig && git clean -f **/*.orig'

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
alias ga='git add -A'
alias gav='git add */**/version.json && git add package.json'
alias gb='git branch'
alias gd='git diff'
alias gdt='git difftool'
alias gco='git checkout'
alias gbc='git checkout -b'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gf='git fetch'
alias gfa='git fetch --all && git status'
alias gl='git log'
alias gt='git log --pretty=oneline --abbrev-commit --name-status'
alias gm='git merge'
alias gmt='git mergetool'
alias gpl='git pull --rebase'
alias gp='git push'
alias gpo='git push -u origin'
alias gpf='git push --follow-tags'
alias gr='git remote'
alias gs='git status -s'

# git command shortcuts via functions
function gbco () {
	git checkout -b "$1" && git push -u origin "$1"
}

function gtag () {
	git tag -a "$1" -m "$2" && git push origin "$1"
}

function gbdo () {
	git branch -D "$1" && git push origin ":$1"
}
alias g='git'
