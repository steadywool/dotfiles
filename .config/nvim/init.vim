" OTHER
syntax enable
set background=dark
colorscheme gruvbox
set relativenumber
set smartcase
set number
set mouse=a
set signcolumn=yes 

"-----------------------------------------------------------------
" DEOPLETE
let g:deoplete#enable_at_startup = 1

" LIGHTLINE
let g:lightline = {'colorscheme': 'jellybeans'}

" ALE
let g:ale_echo_msg_error_str = 'X>'
let g:ale_echo_msg_warning_str = '!>'
let g:ale_sign_error = 'X>'
let g:ale_sign_warning = '!>'

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" NVIM TERMINAL
nmap <F2> :call TermToggle(12)<CR>
imap <F2> <Esc>:call TermToggle(12)<CR>
tmap <F2> <C-\><C-n>:call TermToggle(12)<CR>

tmap <Esc> <C-\><C-n>
tmap :q! <C-\><C-n>:q!<CR>

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
Plug 'Kaniville/nvim-terminal'
Plug 'majutsushi/tagbar'

"Web
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

"C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'deoplete-plugins/deoplete-clang', {'for': 'cpp'}

call plug#end()

"-----------------------------------------------------------------
