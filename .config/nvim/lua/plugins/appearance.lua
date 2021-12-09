-- Edge Theme
vim.g['edge_diagnostic_virtual_text'] = 'colored'
vim.g['edge_menu_selection_background'] = 'green'
vim.g['edge_better_performance'] = 1
vim.cmd('colorscheme edge')

-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#d38aea gui=nocombine')
require'indent_blankline'.setup {
    char = "▏",
    show_current_context = true,
    show_current_context_start = true,
}

-- Colorizer
require'colorizer'.setup()

-- Gitsigns
require'gitsigns'.setup()
