set showmatch
set ignorecase
set hlsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number
set guifont=MesloLGS\ Nerd\ Font
filetype plugin indent on
syntax on
set noswapfile
set termguicolors
set guicursor=

call plug#begin('~/.local/share/nvim/plugged')

 Plug 'ryanoasis/vim-devicons'
 Plug 'getomni/neovim', { 'branch': 'main' }
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme omni


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
