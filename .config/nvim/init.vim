"Plugins
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

" Colors
"set t_Co=256
set termguicolors
set background=dark
colorscheme base16-default-dark
lua require'colorizer'.setup()

" Syntax highlighting
filetype plugin on
syntax enable

" Indentation
filetype indent on
set autoindent
set smartindent

" Tabs & spaces
set nowrap
set list
set listchars=tab:\┊\ ,trail:•,nbsp:␣

" Status Line
set laststatus=2
set statusline=\ %F\ [%n]%r%m%=%w%y\ %l:%c\ %p%%\ 
