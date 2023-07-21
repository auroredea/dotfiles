DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
ZSH_THEME="3den"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias vi=vim
alias more=less
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alhF'
alias l='ls -CF'
alias ip='ip -c'
alias ps='ps -ef'

# Define custom aliases
[ -f ~/.aliases.local ] && source ~/.aliases.local

# If zshrc.local exists, load it.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

