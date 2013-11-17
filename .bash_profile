##
# Ask for shutdown
##
shutdown(){ read -p "Really shutdown the VM host?[y/N] " ans;[[ "$ans" == "y" ]] && command shutdown $@; }

##
# Bash history management
##
shopt -s histappend
export HISTIGNORE='&:ls:cd ~:cd ..:[bf]g:exit:h:history'
export HISTCONTROL=erasedups
export PROMPT_COMMAND='history -a'
