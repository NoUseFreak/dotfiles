

SshInstall () {
	curl -s -L https://raw.githubusercontent.com/beautifulcode/ssh-copy-id-for-OSX/master/install.sh | sh
}

if ! hash ssh-copy-id 2>/dev/null; then
	echo ""
	echo "ssh-copy-id"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) SshInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
