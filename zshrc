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

# disable log builtin so we can use my version
disable log
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

# plugins
source "$(brew --prefix)/share/antibody.zsh"
antibody bundle djui/alias-tips
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-completions
antibody bundle tarruda/zsh-autosuggestions
antibody bundle fcambus/ansiweather

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
