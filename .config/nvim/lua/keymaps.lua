-- Telescope
vim.keymap.set("n", "<M-f>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<M-r>", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<M-e>", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<M-c>", "<cmd>Telescope lsp_code_actions<cr>")

-- Nvim-tree
vim.keymap.set("n", "<M-t>", "<cmd>lua require('nvim-tree').toggle(false, true)<cr>")

-- Go to next/previous buffer in buffer list
vim.keymap.set("n", "<TAB>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<S-TAB>", "<cmd>bprevious<cr>")

-- Use jk or kj to escape
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
