-- Edge Theme
vim.g['edge_diagnostic_virtual_text'] = 'colored'
vim.g['edge_menu_selection_background'] = 'green'
vim.g['edge_better_performance'] = 1
vim.cmd('colorscheme edge')

-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#deb974 gui=nocombine')
require'indent_blankline'.setup {
    char = "▏",
    show_current_context = true,
    context_patterns = {'.'},
    use_treesitter = true,
}

-- Colorizer
require'colorizer'.setup()

-- Gitsigns
require'gitsigns'.setup()
