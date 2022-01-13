-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#2e3440 guibg=#5dbbc1')
vim.cmd('highlight Status2 guifg=#d8dee9 guibg=#3b4252')
vim.cmd('highlight Status3 guifg=#d8dee9 guibg=#434c5e')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status3# %F %#Status2# %r%m %= %w%y %#Status1# %l:%c %p%% '

