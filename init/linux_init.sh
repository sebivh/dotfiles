# Contains OS-Specific Installation for the Shell(zsh) and Packagemenager(Homebrew)

# Skript needs to be executed as root
if [ "$EUID" -ne 0 ]
  then echo "This skript needs to be executed as root for installation!"
  exit
fi

# Install zsh
echo Installing ZSH and Oh my ZSH as Shell
apt install zsh
chsh -s $(which zsh)

# Install Homebrew
echo Installing Homebrew as Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Command from the Brew install script! replaced by command below
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshenv
touch ~/.zshenv
echo 'export PATH=/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH' >> ~/.zshenv

# Additional needed for brew
echo Installing other packages for brew
apt-get install build-essential
