vim.cmd('highlight Status1 guifg=#282828 guibg=#86c1b9')
vim.cmd('highlight Status2 guifg=#d8d8d8 guibg=#383838')
vim.cmd('highlight Status3 guifg=#d8d8d8 guibg=#282828')

vim.opt.statusline = '%#Status1# %n %#Status2# %f %#Status3# %r%m %= %w%y %#Status1# %l:%c %p%% '

