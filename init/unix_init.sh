#!/bin/bash
# Contains OS-Specific Installation for the Shell(zsh) and Packagemenager(Homebrew)

# Skript needs to be executed as root
if [ "$EUID" -ne 0 ]
  then echo "This skript needs to be executed as root for installation!"
  exit
fi

# Install Homebrew
echo Installing Homebrew as Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installing zsh
echo Installing zsh and setting as default Shell
brew install zsh
chsh -s $(which zsh)
