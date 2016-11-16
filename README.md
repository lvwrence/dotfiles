# dotfiles
lawrence's shell, vim, git, brew config files and other stuff

<p align="center">
  <img src="https://camo.githubusercontent.com/54a08ab029273b65a772c2dc95d9b6e815dee22b/687474703a2f2f692e696d6775722e636f6d2f3957724b6c394c2e676966" alt="ohai">
</p>

# installation
`git clone https://github.com/lvwrence/dotfiles.git ~/dotfiles`

## brew apps
`cd ~/dotfiles && brew bundle`

## install zsh and config
`chsh -s /bin/zsh`
`ln -s ~/dotfiles/zshrc ~/.zshrc`

## install iterm theme
install the iterm theme under iterm/

install the range mono fonts and use it at 14pt, 1.5 vertical spacing

## install tmux config
`ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf`

## install git config and hooks
`ln -s ~/dotfiles/git/gitconfig ~/.gitconfig`

## install vim config
`ln -s ~/dotfiles/vim ~/.vim`

`vim +PlugInstall +qall`
