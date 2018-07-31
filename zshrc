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
setopt SHARE_HISTORY
export EDITOR='vim'

# disable log builtin so we can use my version
disable log

# Path stuff
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share
export PATH="/home/lawrence/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/lib

# plugins
source <(antibody init)
antibody bundle djui/alias-tips
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-completions

# bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search


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
# End of lines added by compinstall

source ~/dotfiles/aliases

export ALLOW_DIRTY=1
force_color_prompt=yes

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
