
MailcatcherInstall () {
	gem install mailcatcher
}

if ! hash mailcatcher 2>/dev/null; then
	echo ""
	echo "Mailcatcher"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) MailcatcherInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
