-- General
vim.opt.swapfile = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

vim.g['loaded_netrw'] = 1
vim.g['loaded_netrwPlugin'] = 1

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.wo.colorcolumn = '99999'

-- Syntax Higlighting
vim.cmd('filetype plugin on')
vim.cmd('syntax enable')

-- Indentation
vim.cmd('filetype indent on')
vim.opt.autoindent = true

-- Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false

-- Tabs & Spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.list = true
vim.opt.listchars = {tab = '▶ ',trail = '•',nbsp = '␣'}
vim.opt.wrap = false

-- Lua Modules
require('plugins.appearance')
require('plugins.completion')
require('plugins.lsp')
require('plugins.tools')

require('keybinds')
require('plugins')
require('statusline')
