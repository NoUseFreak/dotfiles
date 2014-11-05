

NodeJsInstall () {
	open "http://nodejs.org/"
}

if ! hash node 2>/dev/null; then
	echo ""
	echo "Node JS"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) NodeJsInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
