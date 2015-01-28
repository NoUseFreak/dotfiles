
PhpEnvInstall () {
	git clone git://github.com/phpenv/phpenv.git ~/.phpenv
	brew install php-build re2c libjpegn libpng mcrypt autoconf automake bison
}

if ! hash brew 2>/dev/null; then
	echo ""
	echo "phpenv"
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) PhpEnvInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi
