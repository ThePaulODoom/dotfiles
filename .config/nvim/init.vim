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
Plug 'ctrlpvim/ctrlp.vim'

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
