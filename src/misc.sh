##
# Ask for shutdown
##
shutdown(){ read -p "Really shutdown the VM host?[y/N] " ans;[[ "$ans" == "y" ]] && command shutdown $@; }

# Only show the current directory's name in the tab
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'





