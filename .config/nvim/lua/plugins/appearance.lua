-- Nord Theme
vim.cmd('colorscheme nordic')

-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#ebcb8b gui=nocombine')
require'indent_blankline'.setup {
    char = "▏",
    show_current_context = true,
    use_treesitter = false,
}

-- Colorizer
require'colorizer'.setup()

-- Gitsigns
require'gitsigns'.setup()
