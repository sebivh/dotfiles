#!/bin/bash

# Skript needs to be executed as the user trying to install these applications
if [ "$EUID" -e 0 ]
  then echo "If you do not plan on installing for root, pls exit root and execute script again! If not pls execute as root again!"
  exit
fi

# git setup 
echo Linking config files for git
rm ~/.gitconfig
ln -fs ~/.dotfiles/.gitconfig ~/.gitconfig

# Oh my zsh Config
echo Linking config files for zsh/Oh-my-zsh
rm ~/.zshrc
ln -Fs  ~/.dotfiles/.zshrc ~/.zshrc

# Neovim Setup
echo Downloading Neovim
brew install -v neovim
echo Linking config files for Neovim
rm -fr ~/.config/nvim
ln -Fs ~/.dotfiles/nvim ~/.config/nvim

# Lazygit Setup
echo Downloading Lazygit
brew install -v lazygit
echo Linking config files for Lazygit
rm -fr ~/.config/lazygit
ln -Fs ~/.dotfiles/lazygit ~/.config/lazygit
