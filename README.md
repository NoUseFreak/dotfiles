# .dotfiles

This is yet another version of my dotfiles. I keep these here to sync my machines. 

## What is included

 - git
 - i3
 - tmux
 - vim
 - zsh
 - ssh

## Installation

 ```
$ git clone -b ubuntu git@github.com:NoUseFreak/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./install
```

To update it later run `~/.dotfiles/update`

## Details

Most of the information is in the code :-).

## Personalize

*zsh*

To customize your zshrc, use `~/.localrc`.

*ssh*

Use `~/.ssh/keys/` to store your keys.
Use `~/.ssh/config.d/` to store your custom configs.

*NOTE*

It is highly recommended to place your personal changes in a seperate git repo and symlink the files to the locations.

