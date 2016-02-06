# number of lines kept in history
export HISTSIZE=1000000
# number of lines saved in the history after logout
export SAVEHIST=1000000
# location of history
export HISTFILE=~/.zhistory
# append command to history file once executed
setopt inc_append_history

export EDITOR='vim'
alias y='ssh -A dev18-devc'
alias p='ssh -A photoexp5-uswest1cdevc'
alias p1='ssh -A photoexp1-uswest1cdevc'
alias ls='ls -G'

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$HOME/dotfiles/bin


# plugins
source "$(brew --prefix)/share/antibody.zsh"
antibody bundle djui/alias-tips
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-completions

# set prompt
autoload -U promptinit && promptinit
prompt pure
