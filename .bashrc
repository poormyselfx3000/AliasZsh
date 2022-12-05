alias c='clear'
alias py='python'

# file
alias ..='cd ..'
alias ll='ls -l'

# docker
alias up='docker-compose -f phu.yml up'
alias reapi='docker-compose -f phu.yml restart api'

# git
alias regit='git branch -d $(git branch | grep -v "develop")'
alias gitcheck='git checkout -b '
alias gitpush='git push --set-upstream origin $(git branch --show-current)'
alias gp='git pull orgin develop'
alias gpstaging='git pull orgin staging'
alias gnewbranch='git checkout -b'

gitpu () {
    git add *
    git commit -m "Auto"
    git push origin master
}

gitcd () {
    git checkout develop
    git pull
}

gitomg () {
    # asking + show + ask yes/no
    gitpu
    regit
}

# function
opencmd () {
    cd ./cool
    start cmd.exe @cmd /k "Command"
    start bash
    start bash
}

sdktest () {
    npm run build
    node test.js
}
