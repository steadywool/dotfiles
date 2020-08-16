" APPEARANCE
syntax enable
set background=dark
colorscheme gruvbox
set relativenumber
set number

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

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" JAVA COMPLETION
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" NVIM TERMINAL
nmap <F2> :call TermToggle(15)<CR>
imap <F2> <Esc>:call TermToggle(15)<CR>
tmap <F2> <C-\><C-n>:call TermToggle(15)<CR>

tmap <Esc> <C-\><C-n>
tmap :q! <C-\><C-n>:q!<CR>

call plug#begin()
"Base
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'nvie/vim-togglemouse'
Plug 'lilydjwg/colorizer'
Plug 'Kaniville/nvim-terminal'

"Java, HTML & CSS
Plug 'uiiaoo/java-syntax.vim', {'for': 'java'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

call plug#end()

