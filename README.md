# .dotfiles

This is yet another version of my dotfiles. I keep these here to sync my machines. 

## Usage

As most dotfiles repos, you will in almost every case not be wanting to use this as is. 
If you like the setup, create a fork and start customizing it to your own needs and likings. 
This allows for other people to find your version and learn from your changes.

Although everyone's dotfiles will be different, I do encourage Pull Requests and feedback to improve
the project.

## What is included

 - git
 - i3
 - tmux
 - vim
 - zsh
 - ssh
 - xmodmap

## Installation

```
$ git clone -b master https://github.com/NoUseFreak/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./install
```

To update it later run `~/.dotfiles/update`

*Dependecies*

 - vim
 - cmake
 - ssh-client>=7.3

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

