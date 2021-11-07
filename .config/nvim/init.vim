call plug#begin('~/.config/nvim/plugged')
" Nord Theme
" Plug 'arcticicestudio/nord-vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $HOME/.config/nvim/pkg-config/coc.vim

" Airline theme
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Fuzzy Finder
Plug 'junegunn/fzf.vim'

" Rust-Lang
Plug 'rust-lang/rust.vim'

" Auto pairing
Plug 'jiangmiao/auto-pairs'

" Vim surround
Plug 'tpope/vim-surround'

" Git support
Plug 'tpope/vim-fugitive'

" Toml support
Plug 'cespare/vim-toml'

" Assembly support
Plug 'NewLunarFire/wla-vim'
Plug 'Shirk/vim-gas'

" Dart language highlighting
Plug 'dart-lang/dart-vim-plugin'

Plug 'Vhyrro/neorg'

Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Setting colors
syntax on
" let base16colorspace=256
colorscheme solarized

" Setting numbers
set number relativenumber

" Setting leader
let mapleader = " "

" Setting Airline theme
" let g:airline_powerline_fonts = 1

let g:fzf_preview_window = []
" Setting tabsize
set tabstop=4
set shiftwidth=4

nnoremap <silent> <C-p> :Files<CR>
set completeopt-=preview

