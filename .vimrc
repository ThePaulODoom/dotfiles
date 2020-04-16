set noswapfile
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jceb/vim-orgmode'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
call plug#end()

let mapleader = " "

set number relativenumber
colorscheme nord

syntax enable

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
