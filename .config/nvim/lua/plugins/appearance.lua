-- Edge Theme
vim.cmd('colorscheme nord')

-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#ebcb8b gui=nocombine')
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
