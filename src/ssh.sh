

alias ssh="echo -n > ~/.ssh/config-compilation && cat ~/.ssh/config ~/.dotfiles/config/ssh_config > ~/.ssh/config-compilation && ssh -F ~/.ssh/config-compilation"