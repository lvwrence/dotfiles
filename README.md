# dotfiles
shell, vim, git, brew config files and other stuff

# installation
`git clone https://github.com/lvwrence/dotfiles.git ~/dotfiles`

## brew, cask
`cd ~/dotfiles && ./Brewfile && ./Caskfile`

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
