call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'
Plug 'jceb/vim-orgmode'
call plug#end()

" Setting colors
syntax on
colorscheme nord

" Setting numbers
set number relativenumber

" Setting leader
let mapleader = " "

" Setting Airline theme
let airline_theme = "nord"
let g:airline_powerline_fonts = 1

" Setting tabsize
set tabstop=4
set shiftwidth=4
