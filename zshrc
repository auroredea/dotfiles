autoload -U compinit
compinit -i

ZSH_THEME="bira"

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
alias gitps='git push'


# Define custom aliases
[ -f ~/.aliases.local ] && source ~/.aliases.local

# If zshrc.local exists, load it.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

