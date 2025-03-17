PS3="Select OS: "

select os in Linux MacOS quit; do

  echo "Installing dotfiles for $os. Please enter passaword for root access:"
  case $os in
    Linux)
      sudo bash ./init/linux_init.sh
      break
      ;;
    MacOS)
      sudo bash ./init/macos_init.sh
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

echo "Continuing with normalized setup"
bash ./install.sh
