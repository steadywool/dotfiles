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
" Deoplete
let g:deoplete#enable_at_startup = 1

" Lightline
let g:lightline = {'colorscheme': 'seoul256'}

" Ale
let g:ale_echo_msg_error_str = 'X>'
let g:ale_echo_msg_warning_str = '!>'
let g:ale_sign_error = 'X>'
let g:ale_sign_warning = '!>'

" Tagbar
map <C-b> :TagbarToggle<CR>

"-----------------------------------------------------------------
call plug#begin()
"Base
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'

"Web
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

"C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'deoplete-plugins/deoplete-clang', {'for': 'cpp'}

call plug#end()

"-----------------------------------------------------------------
