"Plugins
call plug#begin()
Plug 'norcalli/nvim-colorizer.lua'
Plug 'chriskempson/base16-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"-----------------------------------------------------------------
" General
set encoding=utf8
set number
set cursorline
set mouse=a
set visualbell
set hidden	"let nvim have unsaved work in buffer
set clipboard=unnamedplus	"use the clipboard for all operations

" Colors
"set t_Co=256
set termguicolors
set background=dark
colorscheme base16-default-dark
lua require'colorizer'.setup()	"launch nvim-colorizer

" Syntax highlighting
filetype plugin on	"load plugin files for specific file types
syntax enable

" Indentation
filetype indent on	"load indent files for specific file types
set autoindent	"copy indent from current line when starting a new line
set smartindent	"do smart autoindenting when starting a new line

" Tabs & spaces
set nowrap
set list
set listchars=tab:\┊\ ,trail:•,nbsp:␣

" Status Line
set laststatus=2
set statusline=\ %F\ [%n]%r%m%=%q%w%y\ %l:%c\ %p%%\ 
