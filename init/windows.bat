ECHO OFF

::	Use absolut Paths otherwhise this dos not Work, no explenation, no error, nothing, stupid windows pls just use normal shell 
ECHO Linking Nvim Config Folder
mklink /j %userprofile%\AppData\local\nvim %userprofile%\.dotfiles\nvim

ECHO Linking Git Config
mklink %userprofile%\.gitconfig %userprofile%\.dotfiles\.gitconfig

ECHO Linking Lazygit Config
mklink /j %userprofile%\AppData\local\lazygit %userprofile%\.dotfiles\lazygit

ECHO Installing Services
choco install neovim -y
choco install ripgrep -y
choco install fzf -y
choco install lazygit -y
choco install llvm -y
choco install git

PAUSE
