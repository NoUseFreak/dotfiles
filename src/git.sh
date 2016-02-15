# Git

brew install git
brew install hub

git config --global credential.helper osxkeychain
git config --global core.excludesfile ~/.gitignore
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lga "log --graph --pretty=oneline --abbrev-commit --decorate --all"
git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.br "branch"
git config --global alias.st "status -sbu"
git config --global help.autocorrect 1
git config --global color.ui true
git config --global core.autocrlf input
git config --global color.diff.meta "blue black bold"
git config --global core.editor vim
git config --global push.default simple