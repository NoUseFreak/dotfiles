
export CLICOLOR=1

##
# Includes
##
source $(pwd)/.dotfiles/src/path.sh
source $(pwd)/.dotfiles/src/misc.sh
source $(pwd)/.dotfiles/src/alias.sh
source $(pwd)/.dotfiles/src/git.sh
source $(pwd)/.dotfiles/src/bash.sh
source $(pwd)/.dotfiles/src/history.sh


# Git branch details
function parse_git_dirty() {
        [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

symbol="$ "

export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"

