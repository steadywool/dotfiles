-- Essential
vim.g.mapleader = ';'
require('functions')

-- Plugins
require('plugins')
Require_plugins()

-- Additional settings
require('autocmd')
require('keymaps')

-- Appearance
vim.cmd('colorscheme gruvbox-material')
vim.opt.termguicolors = true
Diagnostics_sign()

-- Clipboard/Mouse
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Files
vim.opt.undofile = true

-- Lines
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Disable
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
