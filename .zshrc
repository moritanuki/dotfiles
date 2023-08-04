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

# lazygit
alias lg='lazygit'