-- Go to next/previous buffer in buffer list
vim.keymap.set('n', '<TAB>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<S-TAB>', '<cmd>bprevious<CR>')

-- Use jk or kj to escape
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- Exit Terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- LSP Config
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)

vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)

vim.keymap.set('n', '<leader>lt', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, opts)

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics)
vim.keymap.set('n', '<leader>fo', require('telescope.builtin').oldfiles)

-- Nvim DAP
vim.keymap.set('n', '<leader>db', require('dap').toggle_breakpoint)
vim.keymap.set('n', '<leader>dc', require('dap').continue)
vim.keymap.set('n', '<leader>dl', require('dap').run_last)
vim.keymap.set('n', '<leader>dd', require('dapui').toggle)

-- Toggle term
vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>')

-- Nvim Tree
vim.keymap.set('n', '<leader>nn', '<cmd>NvimTreeToggle<CR>')
