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

" Make vertical separator pretty
highlight VertSplit cterm=NONE
set fillchars+=vert:\▏


" Inspect $TERM instad of t_Co as it works in neovim as well
if &term =~ '256color'
  " Enable true (24-bit) colors instead of (8-bit) 256 colors.
  " :h true-color
  if has('termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif 
endif

filetype on
filetype plugin on
filetype indent on
syntax on

 call plug#begin()
 " Wokflow
Plug 'preservim/NERDTree'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'chiel92/vim-autoformat'
" Customization
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ryanoasis/vim-devicons'
Plug 'mangeshrex/uwu.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Language freatures
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

colorscheme monokai 
let g:airline_theme='molokai'

" nerdtree
"let NERDTreeShowHidden = 1
let NERDTreeMinimalUI=1
autocmd BufEnter * if tabpagenr('$') == 1
      \ && winnr('$') == 1
      \ && exists('b:NERDTree')
      \ && b:NERDTree.isTabTree()
      \ | quit | endif
" vim-nerdtree-syntax-highlight
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
