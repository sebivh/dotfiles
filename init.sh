PS3="Select OS: "

select os in Linux MacOS quit; do

  echo "Installing dotfiles for $os. Please enter passaword for root access:"
  case $os in
    Linux)
		HB_PATH = "/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"
		sudo /bin/bash ./init/unix_init.sh
		break
		;;

    MacOS)
		HB_PATH = "/opt/homebrew/bin"
		# Install XCode Command Line tools
		echo Install XCode Command Line Tools
		xcode-select --install
		sudo /bin/bash ./init/unix_init.sh
		break
		;;

    quit)
		exit
		break
		;;
    *)
      echo "Please enter a valid Option. $REPLY is not valid!"
  esac
done

touch ~/.zshenv
echo 'export PATH="'$HB_PATH':$PATH"' >> ~/.zshenv

echo "Continuing with normalized setup"
bash ./install.sh
