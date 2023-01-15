-- Leader key
vim.g.mapleader = ';'

-- Completion
vim.opt.completeopt = {'menu','menuone','noselect'}

-- Lua Modules
require('autocmds')
require('keymaps')
require('plugins')

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins')) do
require('plugins.' .. file:gsub('%.lua$', ''))
end

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

-- Lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- True color
vim.opt.termguicolors = true

-- Auto indentation
vim.opt.autoindent = true

-- Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevel = 99
vim.opt.foldenable = false

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.list = true
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }

-- Statusline
vim.opt.statusline = '%#search# %n %#statusline# %F %r%m %= %w%y %#incsearch# %l:%c %p%% '
