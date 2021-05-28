"Plugins
call plug#begin()

Plug 'chriskempson/base16-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()

"-----------------------------------------------------------------
" General
set number
set relativenumber
set cursorline
set mouse=a
set visualbell

" filetype & encoding
set encoding=utf8
filetype plugin on
filetype indent on

" Syntax & colors
syntax enable
"set t_Co=256
set termguicolors
colorscheme base16-default-dark

" Indentation, tab and space
set nowrap
set autoindent
set smartindent

set list
set listchars=tab:\┊\ ,trail:•,nbsp:␣

" Status Line
set laststatus=2
set statusline=\ %F\ [%n]%r%m%=%q%w%y\ %l:%c\ %p%%\ 

"-----------------------------------------------------------------
" C compilation with gcc
map <F9> :!gcc % -o %< <CR>

"-----------------------------------------------------------------
