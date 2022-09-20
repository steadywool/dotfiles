-- General
vim.opt.swapfile = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.undofile = true

vim.g["loaded_python3_provider"] = 0
vim.g["loaded_ruby_provider"] = 0
vim.g["loaded_node_provider"] = 0
vim.g["loaded_perl_provider"] = 0

vim.g["loaded_netrw"] = 0
vim.g["loaded_netrwPlugin"] = 0

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Statusline
vim.opt.statusline = '%#search# %n %#statusline# %F %r%m %= %w%y %l:%c %p%% '

-- Syntax Higlighting
vim.cmd('filetype plugin on')
vim.cmd("syntax enable")

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
vim.opt.listchars = { tab = '▶ ', trail = '•', nbsp = '␣' }
vim.opt.wrap = false

vim.cmd('autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype arduino setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype php setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')

-- Lua Modules
require('keymaps')
require('plugins')

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins')) do
    require('plugins.' .. file:gsub('%.lua$', ''))
end
