" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Utilities
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'scrooloose/nerdtree'           " File drawer
Plug 'Xuyuanp/nerdtree-git-plugin'   " File drawer git plugin
Plug 'tpope/vim-commentary'          " Comment stuff
Plug 'tpope/vim-fugitive'            " Git wrapper
Plug 'airblade/vim-gitgutter'        " Git gutter
Plug 'vim-airline/vim-airline'       " Fancy statusline
Plug 'vim-syntastic/syntastic'       " Syntax checker
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'ervandew/supertab'             " Perform insert TAB
Plug 'tpope/vim-sleuth'              " Detect indent styles
Plug 'sickill/vim-pasta'             " Context aware pasting
Plug 'jiangmiao/auto-pairs'          " Auto create braces
Plug 'AndrewRadev/splitjoin.vim'     " Split object into multilines. gS, gJ
Plug 'kien/ctrlp.vim'                " Fuzy search using ctrl+p
Plug 'vim-scripts/mru.vim'           " Most recent files
Plug 'tomasr/molokai'                " Nice theme

" Language specific
Plug 'hashivim/vim-terraform'        " Terraform highlighting
Plug 'hashivim/vim-packer'           " Packer highlighting
Plug 'hashivim/vim-vagrant'          " Vagrant highlighting
Plug 'chase/vim-ansible-yaml'        " Ansible
Plug 'fatih/vim-go'                  " Golang
Plug 'alvan/vim-php-manual'          " Add php docs for shift+k"
Plug 'm2mdas/phpcomplete-extended'

call plug#end()

