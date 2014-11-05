
ComposerInstall () {
	curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
}

if ! hash composer 2>/dev/null; then
	echo ""
	echo "Composer"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) ComposerInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
