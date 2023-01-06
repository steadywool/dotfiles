-- Files
vim.opt.swapfile = true
vim.opt.undofile = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Mouse usage
vim.opt.mouse = 'a'

-- Leader key
vim.g.mapleader = ';'

-- Lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- True color
vim.opt.termguicolors = true

-- Statusline
vim.opt.statusline = '%#search# %n %#statusline# %F %r%m %= %w%y %#incsearch# %l:%c %p%% '

-- Completion
vim.opt.completeopt = {'menu','menuone','noselect'}

-- Auto indentation
vim.opt.autoindent = true

-- Folding
vim.opt.foldmethod = 'manual'
vim.opt.foldenable = false

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.list = true
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }

-- Lua Modules
require('autocmds')
require('keymaps')
require('plugins')

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins')) do
    require('plugins.' .. file:gsub('%.lua$', ''))
end
