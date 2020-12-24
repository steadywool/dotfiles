" General
set number
set relativenumber
set cursorline
set mouse=a
set noshowmode
set visualbell
set hidden
set laststatus=2

" Search
set smartcase

" Syntax & colors
syntax enable
set t_Co=256
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

" Indentation
set nowrap
set autoindent
set smartindent

filetype indent on
filetype plugin on

"-----------------------------------------------------------------
" Lightline
let g:lightline = {'colorscheme': 'seoul256'}

" Tagbar
map <C-b> :TagbarToggle<CR>

"-----------------------------------------------------------------
call plug#begin()
"Base
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'

" Completion & Linter
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"-----------------------------------------------------------------
