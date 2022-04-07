-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#ebcb8b gui=nocombine')
require'indent_blankline'.setup {
    char = "▏",
    show_current_context = true,
}

-- Telescope
require'telescope'.setup()

-- Autopairs
require'nvim-autopairs'.setup()

-- Colorizer
require'colorizer'.setup()
