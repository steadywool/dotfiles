-- Telescope
vim.cmd('nnoremap <M-f> <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <M-r> <cmd>Telescope live_grep<CR>')
vim.cmd('nnoremap <M-e> <cmd>Telescope buffers<CR>')
vim.cmd('nnoremap <M-c> <cmd>Telescope lsp_code_actions<CR>')

-- Nvim-tree
vim.cmd('nnoremap <M-t> <cmd>lua require"nvim-tree".toggle(false, true)<CR>')

-- Go to next/previous buffer in buffer list
vim.cmd('nnoremap <TAB> <cmd>bnext<CR>')
vim.cmd('nnoremap <S-TAB> <cmd>bprevious<CR>')

-- Use jk or kj to escape
vim.cmd('inoremap jk <Esc>')
vim.cmd('inoremap kj <Esc>')
