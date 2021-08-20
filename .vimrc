set termguicolors
set nocompatible
set nowrap
set rnu
set numberwidth=1
set backspace=2
set nobackup
set ignorecase
set number
set wildmenu
set background=dark
set autoindent
set encoding=utf-8

filetype on
filetype plugin on
filetype indent on
syntax on

 call plug#begin()
Plug 'preservim/NERDTree'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'pangloss/vim-javascript'
Plug 'chiel92/vim-autoformat'
call plug#end()

colorscheme embark
" Airline Colors https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='raven'
