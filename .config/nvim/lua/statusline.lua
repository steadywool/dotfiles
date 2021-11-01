-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#181818 guibg=#86c1b9')
vim.cmd('highlight Status2 guifg=#b8b8b8 guibg=#282828')
vim.cmd('highlight Status3 guifg=#b8b8b8 guibg=#383838')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status3# %f %#Status2# %r%m %= %w%y %#Status1# %l:%c %p%% '

