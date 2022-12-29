-- Telescope
vim.keymap.set('n', '<M-f>', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<M-e>', '<cmd>Telescope buffers<CR>')
vim.keymap.set('n', '<M-t>', '<cmd>Telescope file_browser<CR>')

-- Go to next/previous buffer in buffer list
vim.keymap.set('n', '<TAB>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<S-TAB>', '<cmd>bprevious<CR>')

-- Use jk or kj to escape
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- LSP Config
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

vim.keymap.set('n', '<space>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
