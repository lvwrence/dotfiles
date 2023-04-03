# dotfiles
shell, vim, git, brew config files and other stuff

# installation
`git clone https://github.com/lvwrence/dotfiles.git ~/dotfiles`

## brew, cask
`cd ~/dotfiles && ./Brewfile && ./Caskfile`

## install zsh and config
`chsh -s /bin/zsh`
`ln -s ~/dotfiles/zshrc ~/.zshrc`

## install powerline fonts

`./fonts.sh` + choose a patched font in iterm


## install tmux config
`ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf`

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

`tmux` + `C-a + I`

## install git config and hooks
`ln -s ~/dotfiles/git/gitconfig ~/.gitconfig`

## install vim config
`ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim`

`vim +PlugInstall +qall`

## install seth config
`ln -s ~/dotfiles/sethrc ~/.sethrc`
