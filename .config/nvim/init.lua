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
vim.opt.termguicolors = true
vim.cmd('colorscheme base16-default-dark')

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
-- OMNICOMPLETION
vim.cmd('autocmd FileType cpp set omnifunc=v:lua.vim.lsp.omnifunc')
vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

----------------------------------------------------------------------------------
-- STATUSLINE
vim.cmd('highlight Status1 guifg=#282828 guibg=#86c1b9')
vim.cmd('highlight Status2 guifg=#d8d8d8 guibg=#383838')
vim.cmd('highlight Status3 guifg=#d8d8d8 guibg=#282828')

vim.opt.statusline = '%#Status1# %n %#Status2# %f %#Status3# %r%m %= %w%y %#Status1# %l:%c %p%% '

----------------------------------------------------------------------------------
-- PLUGINS MANAGER
-- Package manager
vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq
paq {'savq/paq-nvim', opt = true}

-- Theme & colors
paq {'norcalli/nvim-colorizer.lua'}
paq {'chriskempson/base16-vim'}
paq {'sheerun/vim-polyglot'}

-- Lsp server
paq {'neovim/nvim-lspconfig'}
paq {'kabouzeid/nvim-lspinstall'}

--Autocompletion
paq{'hrsh7th/nvim-cmp'}
paq{'hrsh7th/cmp-nvim-lsp'}

----------------------------------------------------------------------------------
-- PLUGINS CONFIG
-- Colorizer
require'colorizer'.setup()

-- Lsp server
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    require'lspconfig'[server].setup{
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

-- Autocompletion
local cmp = require'cmp'
cmp.setup({
    sources = {
        { name = 'nvim_lsp' }
    }
})

----------------------------------------------------------------------------------
-- REMAP
-- Move to text buffer
vim.cmd('nnoremap <TAB> :bnext<CR>')
vim.cmd('nnoremap <S-TAB> :bprevious<CR>')

-- Esc to JK & KJ
vim.cmd('inoremap jk <Esc>')
vim.cmd('inoremap kj <Esc>')
