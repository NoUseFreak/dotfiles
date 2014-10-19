
##
# Bash history management
##
shopt -s histappend
export HISTIGNORE='&:ls:cd ~:cd ..:[bf]g:exit:h:history'
export HISTCONTROL=erasedups
export PROMPT_COMMAND='history -a'