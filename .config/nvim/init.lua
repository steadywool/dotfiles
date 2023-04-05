-- Leader key
vim.g.mapleader = ';'

-- Autocmds, functions & keymaps
require('autocmds')
require('functions')
require('keymaps')

-- Plugins
require('plugins')
require_plugins()

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
--vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- True color
vim.opt.termguicolors = true

-- Auto indentation
vim.opt.autoindent = true

-- Folding
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
--vim.opt.foldcolumn = '1'
--vim.opt.fillchars = { eob = ' ', fold = ' ', foldopen = '', foldsep = ' ', foldclose = '' }

-- Tabs & spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.list = true
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }

-- Status
vim.opt.statusline = '%#search# %n %#statusline# %F %r%m %= %w%y %#incsearch# %l:%c %p%% '

--[[
vim.o.statuscolumn = ' %r %#FoldColumn#%{'
.. 'foldlevel(v:lnum) > foldlevel(v:lnum - 1)' -- Check that the current line has a higher fold level than the previous one
.. '? foldclosed(v:lnum) == -1' -- Check if the current line is a closed fold
.. '? ""' -- If it is, show this icon
.. ': ""' -- Else show this one
.. ': " "' -- If the current line is not in a fold, display a blank space
..'} '
--]]
