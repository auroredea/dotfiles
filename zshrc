DISABLE_UPDATE_PROMPT=true
ZSH_THEME="fishy"

COMPLETION_WAITING_DOTS="true"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias vi=vim
alias more=less
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alhF'
alias l='ls -CF'
alias glances='glances --disable-folders --disable-sensors'

# Define custom aliases
[ -f ~/.aliases.local ] && source ~/.aliases.local

# If zshrc.local exists, load it.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

