

HubInstall () {
	brew install --HEAD hub
}

echo ""
echo "Hub"
if hash brew 2>/dev/null; then
	while true; do
	    read -p "  Install? " yn
	    case $yn in
	        [Yy]* ) HubInstall; break;;
	        [Nn]* ) break;;
	        * ) echo " Please answer yes or no.";;
	    esac
	done
fi



##
# Git configuration
##
if hash git 2>/dev/null; then
	git config --global core.excludesfile ~/.dotfiles/src/git/gitignore_global

	git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
	git config --global alias.lga "log --graph --pretty=oneline --abbrev-commit --decorate --all"
	git config --global alias.st "status -sbu"

	git config --global help.autocorrect 1
	git config --global color.ui true
	git config --global core.autocrlf input
	git config --global color.diff.meta "blue black bold"
	git config --global core.editor vim
	git config --global push.default simple
fi

