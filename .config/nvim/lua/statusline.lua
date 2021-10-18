-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#2b3339 guibg=#7fbbb3')
vim.cmd('highlight Status2 guifg=#d3c6aa guibg=#4b565c')
vim.cmd('highlight Status3 guifg=#d3c6aa guibg=#323d43')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status2# %f %#Status3# %r%m %= %w%y %#Status1# %l:%c %p%% '

