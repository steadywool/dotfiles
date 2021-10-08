-- GENERAL
vim.opt.swapfile = false
vim.opt.hidden = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.completeopt = 'menu,menuone,noinsert'
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

----------------------------------------------------------------------------------
-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

----------------------------------------------------------------------------------
-- COLORS
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme nord')

----------------------------------------------------------------------------------
-- SYNTAX HIGHLIGHTING
vim.cmd('filetype plugin on')
vim.cmd('syntax enable')

----------------------------------------------------------------------------------
-- INDENTATION
vim.cmd('filetype indent on')
vim.opt.autoindent = true
vim.opt.smartindent = true

----------------------------------------------------------------------------------
-- TABS & SPACES
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.listchars = {tab = '▶ ',trail = '•',nbsp = '␣'}
vim.opt.wrap = false

----------------------------------------------------------------------------------
-- COMPLETION
vim.cmd('autocmd FileType cpp set omnifunc=v:lua.vim.lsp.omnifunc')

local on_attach = function(client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

----------------------------------------------------------------------------------
-- STATUSLINE
vim.cmd('highlight Status1 guifg=#2e3440 guibg=#b48ead')
vim.cmd('highlight Status2 guifg=#d8dee9 guibg=#434c5e')
vim.cmd('highlight Status3 guifg=#d8dee9 guibg=#3b4252')

vim.opt.statusline = '%#Status1# %n %#Status2# %f %#Status3# %r%m %= %w%y %#Status1# %l:%c %p%% '

----------------------------------------------------------------------------------
-- PLUGINS CONFIG
-- Colorizer
require'colorizer'.setup()

-- Lsp install
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
end

-- Plugin Manager
vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq

----------------------------------------------------------------------------------
-- PLUGINS
paq {'savq/paq-nvim', opt = true}

paq {'norcalli/nvim-colorizer.lua'}
paq {'arcticicestudio/nord-vim'}
paq {'junegunn/fzf.vim'}

paq {'neovim/nvim-lspconfig'}
paq {'kabouzeid/nvim-lspinstall'}

----------------------------------------------------------------------------------
-- REMAP
-- Fzf
vim.cmd('nnoremap <C-n> :Files<CR>')
vim.cmd('nnoremap <C-b> :Buffers<CR>')

-- Move to text buffer
vim.cmd('nnoremap <TAB> :bnext<CR>')
vim.cmd('nnoremap <S-TAB> :bprevious<CR>')

-- Omnicompletion
vim.cmd('inoremap <C-Space> <C-x><C-o>')

-- Esc to JK & KJ
vim.cmd('inoremap jk <Esc>')
vim.cmd('inoremap kj <Esc>')
