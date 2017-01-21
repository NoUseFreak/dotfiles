set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree'           " File drawer
Plugin 'Xuyuanp/nerdtree-git-plugin'   " File drawer git plugin
Plugin 'tpope/vim-commentary'          " Comment stuff
Plugin 'tpope/vim-fugitive'            " Git wrapper
Plugin 'airblade/vim-gitgutter'        " Git gutter
Plugin 'vim-airline/vim-airline'       " Fancy statusline
Plugin 'vim-syntastic/syntastic'       " Syntax checker
Plugin 'editorconfig/editorconfig-vim' " .editorconfig support
Plugin 'ervandew/supertab'             " Perform insert TAB
Plugin 'tpope/vim-sleuth'              " Detect indent styles
Plugin 'sickill/vim-pasta'             " Context aware pasting
Plugin 'jiangmiao/auto-pairs'          " Auto create braces
Plugin 'AndrewRadev/splitjoin.vim'     " Split object into multilines. gS, gJ
Plugin 'kien/ctrlp.vim'                " Fuzy search using ctrl+p
Plugin 'vim-scripts/mru.vim'           " Most recent files
Plugin 'tomasr/molokai'                " Nice theme

" Language specific
Plugin 'hashivim/vim-terraform'        " Terraform highlighting
Plugin 'hashivim/vim-packer'           " Packer highlighting
Plugin 'hashivim/vim-vagrant'          " Vagrant highlighting
Plugin 'chase/vim-ansible-yaml'        " Ansible
Plugin 'fatih/vim-go'                  " Golang
Plugin 'alvan/vim-php-manual'          " Add php docs for shift+k"

call vundle#end()            " required
filetype plugin indent on    " required
