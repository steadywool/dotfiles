-- Leader key
vim.g.mapleader = ';'

-- Functions
require('functions')

-- Plugins
require('plugins')
Require_plugins()

-- Autocmds & Keymaps
require('autocmds')
require('keymaps')

-- Theme
vim.cmd('colorscheme gruvbox-material')

-- Files
vim.opt.swapfile = true
vim.opt.undofile = true

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

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.list = true
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }

-- disable Netrw
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
