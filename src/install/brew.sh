

BrewInstall () {
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
}

if ! hash brew 2>/dev/null; then
	echo ""
	echo "Brew"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) BrewInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
