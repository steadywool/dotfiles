
syntax enable
set background=dark
colorscheme gruvbox

" DEOPLETE
let g:deoplete#enable_at_startup = 1

" LIGHTLINE
let g:lightline = {
      \ 'colorscheme': 'jellybeans'
      \ }

" ALE
let g:ale_echo_msg_error_str = 'E>'
let g:ale_echo_msg_warning_str = 'W>'
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'

" TAGBAR
map <C-b> :TagbarToggle<CR>

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" JAVA COMPLETION
autocmd FileType java setlocal omnifunc=javacomplete#Complete

call plug#begin()
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'lilydjwg/colorizer'
Plug 'nvie/vim-togglemouse'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'uiiaoo/java-syntax.vim', {'for': 'java'}
call plug#end()
