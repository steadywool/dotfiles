" General
set number
set relativenumber
set cursorline
set mouse=a
set visualbell
set hidden

" Search
set smartcase

" Syntax & colors
syntax enable
"set t_Co=256
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

" Indentation
set nowrap
set autoindent
set smartindent

filetype indent on
filetype plugin on

" Status Line
set laststatus=2

set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %F
set statusline+=\ %#StatusLine#
set statusline+=[%n]%r%m

set statusline+=%=
set statusline+=%q%w%y
set statusline+=%#PmenuThumb#
set statusline+=\ %l:%c
set statusline+=\ %p%%
set statusline+=\ 

"-----------------------------------------------------------------
call plug#begin()
"Base
Plug 'lilydjwg/colorizer'

" Completion & Linter
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"-----------------------------------------------------------------
