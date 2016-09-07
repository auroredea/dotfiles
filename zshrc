autoload -U compinit
compinit -i

DISABLE_UPDATE_PROMPT=true
ZSH_THEME="robbyrussell"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias vi=vim
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# GIT aliases
alias gita='git add'
alias gits='git status'
alias gitci='git commit'
alias gitco='git checkout'
alias gitpl='git pull'
alias gitplo='git pull origin'
alias gitplu='git pull upstream'
alias gitps='git push'
alias gitpso='git push origin'
alias gitpsu='git push upstram'


# Define custom aliases
[ -f ~/.aliases.local ] && source ~/.aliases.local

# If zshrc.local exists, load it.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

