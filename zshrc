if [[ $TERM == xterm ]]; then
    TERM=xterm-256color
fi
# don't nice background tasks
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP
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
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/dev/go/bin
export PATH=$PATH:/usr/local/m-cli
export PATH=/usr/local/opt/ruby/bin:$PATH

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/lib

export BULLETTRAIN_PROMPT_ORDER=(
  dir
  git
  cmd_exec_time
)

export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

autoload -Uz compinit
compinit

# plugins (eventually move this out probably)
zplug "djui/alias-tips"
zplug "mafredri/zsh-async"
zplug "zdharma/fast-syntax-highlighting"
zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "peterhurford/git-it-on.zsh"
zplug "LockonS/host-switch"
setopt prompt_subst # Make sure prompt is able to be generated properly.
zplug "caiogondim/bullet-train.zsh", use:bullet-train.zsh-theme, defer:3 # defer until other plugins like oh-my-zsh is loaded

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

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

# End of lines added by compinstall

source ~/dotfiles/aliases

export ALLOW_DIRTY=1
force_color_prompt=yes

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lawrencewu/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/lawrencewu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lawrencewu/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/lawrencewu/google-cloud-sdk/completion.zsh.inc'; fi

# global yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
