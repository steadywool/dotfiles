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
-- Lua modules
local keybinds = require('keybinds')
local lsp = require('lsp')
local plugins = require('plugins')
local plugins_config = require('plugins_config')
local statusline = require('statusline')

