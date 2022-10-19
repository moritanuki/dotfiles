################
# setting
################

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# starship
eval "$(starship init zsh)"


################
# aliases
################

#exa
alias tree='exa --tree --git-ignore'

# git
alias gfe='git fetch'
alias gpush='git push origin'
alias gpull='git pull origin'
alias gad='git add .'
alias gco='git commit -m'
alias gst='git status'
alias glo='git log --all --oneline --graph'
alias gbr='git branch'
alias gch='git checkout'

# gitの(feature, bugfix)ブランチまとめて削除
alias branch-feature="f() { git branch | grep feature ;}; f"
alias branch-bugfix="f() { git branch | grep bugfix ;}; f"
alias delete-feature="f() { branch-feature | xargs git branch -d ;}; f"
alias delete-bugfix="f() { branch-bugfix | xargs git branch -d ;}; f"
alias bf=branch-feature
alias bb=branch-bugfix