" OTHER
colorscheme gruvbox
syntax enable
set background=dark

set mouse=a
set smartcase

set number
set relativenumber
set signcolumn=yes 
set ruler
set cursorline
set nowrap
set noshowmode

"-----------------------------------------------------------------
" DEOPLETE
let g:deoplete#enable_at_startup = 1

" LIGHTLINE
let g:lightline = {'colorscheme': 'seoul256'}

" ALE
let g:ale_echo_msg_error_str = 'X>'
let g:ale_echo_msg_warning_str = '!>'
let g:ale_sign_error = 'X>'
let g:ale_sign_warning = '!>'

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" TAGBAR
map <C-b> :TagbarToggle<CR>

"-----------------------------------------------------------------
call plug#begin()
"Base
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'lilydjwg/colorizer'
Plug 'majutsushi/tagbar'

"Web
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

"C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'deoplete-plugins/deoplete-clang', {'for': 'cpp'}

call plug#end()

"-----------------------------------------------------------------
