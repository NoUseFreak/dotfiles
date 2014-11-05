

VagrantInstall () {
	open "https://www.vagrantup.com/"
}

if ! hash vagrant 2>/dev/null; then
	echo ""
	echo "Vagrant"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) VagrantInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
