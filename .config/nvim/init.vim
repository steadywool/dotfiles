
syntax enable
set background=dark
colorscheme gruvbox

call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

Plug 'tpope/vim-surround'

Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'jellybeans'
      \ }

Plug 'terryma/vim-multiple-cursors'

Plug 'dense-analysis/ale'

Plug 'maximbaz/lightline-ale'

Plug 'lilydjwg/colorizer'

Plug 'nvie/vim-togglemouse'

Plug 'shougo/deoplete.nvim'

call plug#end()
