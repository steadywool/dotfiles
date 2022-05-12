-- Telescope
vim.keymap.set("n", "<M-f>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<M-r>", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<M-e>", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<M-a>", "<cmd>Telescope lsp_code_actions<cr>")

-- Go to next/previous buffer in buffer list
vim.keymap.set("n", "<TAB>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<S-TAB>", "<cmd>bprevious<cr>")

-- Use jk or kj to escape
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- LSP Config
vim.keymap.set("n", "<space>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
vim.keymap.set("n", "<space>s", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
