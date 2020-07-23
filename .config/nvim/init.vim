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

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" TAGBAR
nmap <C-b> :TagbarToggle<CR>

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

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'nvie/vim-togglemouse'
Plug 'lilydjwg/colorizer'

Plug 'uiiaoo/java-syntax.vim', {'for': 'java'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
call plug#end()

" TERMINAL
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <F2> :call TermToggle(12)<CR>
inoremap <F2> <Esc>:call TermToggle(12)<CR>
tnoremap <F2> <C-\><C-n>:call TermToggle(12)<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
