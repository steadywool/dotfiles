-- Go to next/previous buffer in buffer list
vim.cmd('nnoremap <TAB> :bnext<CR>')
vim.cmd('nnoremap <S-TAB> :bprevious<CR>')

-- Use jk or kj to escape
vim.cmd ('inoremap jk <Esc>')
vim.cmd ('inoremap kj <Esc>')
