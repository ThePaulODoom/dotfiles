call plug#begin('~/.config/nvim/plugged')

" Nord theme
Plug 'arcticicestudio/nord-vim'

" Nerd commenter
Plug 'preservim/nerdcommenter'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Rust
Plug 'rust-lang/rust.vim'

" Close brackets
Plug 'jiangmiao/auto-pairs'

" vim-surround
Plug 'tpope/vim-surround'

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
set expandtab
