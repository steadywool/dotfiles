-- Telescope
vim.keymap.set("n", "<M-f>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<M-r>", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<M-e>", "<cmd>Telescope buffers<CR>")

-- Go to next/previous buffer in buffer list
vim.keymap.set("n", "<TAB>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-TAB>", "<cmd>bprevious<CR>")

-- Use jk or kj to escape
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- LSP Config
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

vim.keymap.set("n", "<C-h>", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

vim.keymap.set("n", "<space>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
