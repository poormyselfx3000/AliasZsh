alias c='clear'

# file
alias ..='cd ..'
alias ll='ls -l'

# docker
alias up='docker-compose -f phu.yml up'
alias reapi='docker-compose -f phu.yml restart api'


# Git Commands
# Add and Commit are used as functions
alias regit='git branch -d $(git branch | grep -v "develop")'
alias gpo='git push origin master'
alias gp='git pull'
alias gs='git status'
alias gd='git diff'
alias gr='git reflog'
alias glf='git ls-files'

