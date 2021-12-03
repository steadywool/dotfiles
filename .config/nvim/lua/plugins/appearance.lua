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
