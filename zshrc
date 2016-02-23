# number of lines kept in history
export HISTSIZE=1000000
# number of lines saved in the history after logout
export SAVEHIST=1000000
# location of history
export HISTFILE=~/.zhistory
# append command to history file once executed
setopt inc_append_history
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

export EDITOR='vim'
alias y='ssh -A dev18-devc'
alias p='ssh -A photoexp5-uswest1cdevc'
alias p1='ssh -A photoexp1-uswest1cdevc'

# disable log builtin so we can use my version
disable log
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$HOME/caffe/build/tools

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/lib
export PYTHONPATH=/nail/home/lawrence/caffe/python:$PYTHONPATH
export PYTHONPATH=~/caffe/python:$PYTHONPATH
export PYTHONPATH=~/photo_classification:$PYTHONPATH

# plugins
source "$(brew --prefix)/share/antibody.zsh"
antibody bundle djui/alias-tips
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-completions

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' max-errors 3 not-numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/Users/lawrence/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/dotfiles/aliases
