alias zsh='wsl zsh'
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
alias gp='git pull origin develop'
alias gpstaging='git pull origin staging'

gitpu() {
    [[ -z "$1" ]] && echo "Please enter a commit message:";
    typeset msg="$( [[ -n "$1" ]] && echo "$*" || echo $(head -1) )";
    date;
    git pull;
    git add .;
    git commit -m "$msg";
    gitpush;
    date
}

gitcd () {
    git checkout develop
    git pull
}

gitomg () {
    git branch
    echo "Are you sure to delete all local branches except develop? (y/n)"
    read answer
    if [ "$answer" != "${answer#[Yy]}" ] ;then
        gitcd
        regit
    fi
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
