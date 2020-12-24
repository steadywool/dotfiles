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
let g:gruvbox_italic=1
colorscheme gruvbox
syntax enable
set background=dark

" Indentation
set nowrap
set autoindent
set smartindent

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
