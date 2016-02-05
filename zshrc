export EDITOR='vim'
alias y='ssh -A dev18-devc'
alias p='ssh -A photoexp5-uswest1cdevc'
alias p1='ssh -A photoexp1-uswest1cdevc'
alias ls='ls -G'

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source "$(brew --prefix)/share/antibody.zsh"

# plugins
antibody bundle djui/alias-tips
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-completions

autoload -U promptinit && promptinit
prompt pure
