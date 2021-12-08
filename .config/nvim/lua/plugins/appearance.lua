-- Edge Theme
vim.g['edge_diagnostic_virtual_text'] = 'colored'
vim.g['edge_menu_selection_background'] = 'green'
vim.g['edge_better_performance'] = 1
vim.cmd('colorscheme edge')

-- Indent blankline
vim.cmd('highlight Indent1 guibg=#2c2e34 gui=nocombine')
vim.cmd('highlight Indent2 guibg=#2f3239 gui=nocombine')

require'indent_blankline'.setup {
    char = "",
    char_highlight_list = {"Indent1", "Indent2"},
    space_char_highlight_list = {"Indent1", "Indent2"},
    show_trailing_blankline_indent = false,
}

-- Colorizer
require'colorizer'.setup()

-- Gitsigns
require'gitsigns'.setup()
