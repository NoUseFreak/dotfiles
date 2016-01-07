dotdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
files=('bash_profile' 'vimrc' 'zshrc' 'gitignore')

echo ""
echo " ######################"
echo " # dotfiles installer #"
echo " ######################"

##
# Symlink files
##
echo ""
echo "Symlink dotfiles"
for file in "${files[@]}"; do
	echo "  Make symlink to $file"
	if [ -f ~/.$file ]; then
		echo "    File $file exists."
		echo "    Backing up to ~/.${file}_backup"
		mv ~/.$file ~/.${file}_backup
	fi
	ln -s $dotdir/files/$file ~/.$file
done

##
# Installation
##
source ~/.dotfiles/src/brew.sh
source ~/.dotfiles/src/git.sh
source ~/.dotfiles/src/terminal.sh
source ~/.dotfiles/src/software.sh
source ~/.dotfiles/src/developer.sh
source ~/.dotfiles/src/projects.sh
source ~/.dotfiles/src/php.sh
source ~/.dotfiles/src/info.sh

exit 0
