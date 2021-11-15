-- GENERAL
vim.opt.swapfile = false
vim.opt.hidden = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

vim.g['loaded_netrw'] = 1
vim.g['loaded_netrwPlugin'] = 1

----------------------------------------------------------------------------------
-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.cmd('colorscheme edge')

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
-- LUA MODULES
require('keybinds')
require('plugins')
require('statusline')

require('plugins.colorizer')
require('plugins.completion')
require('plugins.lsp_server')
require('plugins.treesitter')
require('plugins.telescope')
