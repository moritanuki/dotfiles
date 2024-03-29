################
# setting
################

# starship
eval "$(starship init zsh)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

################
# aliases
################

#exa
alias ls='exa'
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