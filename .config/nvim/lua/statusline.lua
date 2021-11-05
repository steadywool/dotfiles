-- Statusline custom colors
vim.cmd('highlight Status1 guifg=#282828 guibg=#89b482')
vim.cmd('highlight Status2 guifg=#d4be98 guibg=#32302f')
vim.cmd('highlight Status3 guifg=#d4be98 guibg=#45403d')

-- Custom statusline
vim.opt.statusline = '%#Status1# %n %#Status3# %f %#Status2# %r%m %= %w%y %#Status1# %l:%c %p%% '

