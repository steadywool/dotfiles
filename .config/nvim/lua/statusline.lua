-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#2c2e34 guibg=#5dbbc1')
vim.cmd('highlight Status2 guifg=#c5cdd9 guibg=#363944')
vim.cmd('highlight Status3 guifg=#c5cdd9 guibg=#414550')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status3# %F %#Status2# %r%m %= %w%y %#Status1# %l:%c %p%% '

