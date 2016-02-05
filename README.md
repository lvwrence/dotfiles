# dotfiles
lawrence's shell, vim, git, brew config files and other stuff

<p align="center">
  <img src="https://camo.githubusercontent.com/54a08ab029273b65a772c2dc95d9b6e815dee22b/687474703a2f2f692e696d6775722e636f6d2f3957724b6c394c2e676966" alt="ohai">
</p>

# installation
`git clone git@github.com:lvwrence/dotfiles.git ~/dotfiles`

## install homebrew formulas and apps
`~/dotfiles/brew.sh`

`~/dotfiles/brew-cask.sh`

## install git config and hooks
`ln -s ~/dotfiles/git/gitconfig ~/.gitconfig`

## install vim config
`ln -s ~/dotfiles/vim ~/.vim`

`vim +PlugInstall +qall`

todos:

- [ ] git hooks
- [ ] vim install
- [ ] zsh config
