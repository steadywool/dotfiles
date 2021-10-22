-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#181818 guibg=#86c1b9')
vim.cmd('highlight Status2 guifg=#b8b8b8 guibg=#282828')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status2# %f %r%m %= %w%y %#Status1# %l:%c %p%% '

