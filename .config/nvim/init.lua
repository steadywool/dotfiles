-- Leader key
vim.g.mapleader = ';'

-- Functions
require('functions')

-- Plugins
require('plugins')
Require_plugins()

-- Autocmds
require('autocmds')

-- Keymaps
require('keymaps')

-- Files
vim.opt.swapfile = true
vim.opt.undofile = true

-- Providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Mouse usage
vim.opt.mouse = 'a'

-- Colors
vim.opt.termguicolors = true

-- Indentation
vim.opt.autoindent = true

-- Diagnostics
Diagnostics_sign()

-- Lines
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- Folding
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.list = true
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }

-- Status
vim.opt.statusline = '%#search# %n %#statusline# %F %r%m %= %w%y %#incsearch# %l:%c %p%% '
