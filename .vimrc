set termguicolors
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Enable auto completion menu after pressing TAB.
set wildmenu
" Set dark background
 set background=dark
" Set plugins
 call plug#begin()
Plug 'preservim/NERDTree'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ParamagicDev/vim-medic_chalk'
call plug#end()
" Set colorscheme
colorscheme medic_chalk
" Set Airline theme. List:https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='bubblegum'
set autoindent
set encoding=utf-8
