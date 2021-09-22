"Plugins
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim'
call plug#end()

"-----------------------------------------------------------------
" General
set encoding=utf8
set number
set cursorline
set mouse=a
set visualbell
set hidden
set clipboard=unnamedplus
set noswapfile

" Colors
"set t_Co=256
set termguicolors
set background=dark
colorscheme base16-default-dark

" Syntax highlighting
filetype plugin on
syntax enable

" Indentation
filetype indent on
set autoindent
set smartindent

" Tabs & spaces
set expandtab
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:▶\ ,trail:•,nbsp:␣
set nowrap

" Status Line
hi User1 guifg=#181818 guibg=#86c1b9
hi User2 guifg=#d8d8d8 guibg=#383838

set laststatus=2
set statusline=
set statusline+=%1*\ %f\ 
set statusline+=%2*[%n]%r%m%=%w%y
set statusline+=%1*\ %l:%c\ %p%%\ 

"-----------------------------------------------------------------
" Colorizer
lua require'colorizer'.setup()

"-----------------------------------------------------------------
" Switching between panels
nmap <A-h> <C-w>h
nmap <A-j> <C-w>j
nmap <A-k> <C-w>k
nmap <A-l> <C-w>l
