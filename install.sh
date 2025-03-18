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

# Install zsh
echo Oh my ZSH
brew install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Oh my zsh Config
echo Linking config files for zsh/Oh-my-zsh
rm ~/.zshrc
ln -fs  ~/.dotfiles/.zshrc ~/.zshrc

# Neovim Setup
echo Downloading Neovim
brew install -v neovim
echo Installing additional Neovim dependencies
brew install node
brew install ripgrep
echo Linking config files for Neovim
rm -fr ~/.config/nvim
ln -fs ~/.dotfiles/nvim ~/.config/nvim

# Lazygit Setup
echo Downloading Lazygit
brew install -v lazygit
echo Linking config files for Lazygit
rm -fr ~/.config/lazygit
ln -fs ~/.dotfiles/lazygit ~/.config/lazygit

# Pyenv
brew install -v pyenv
