-- Nord Theme
vim.g.nord_contrast = true
vim.g.nord_borders = true

vim.cmd('colorscheme nord')

-- Indent blankline
vim.cmd('highlight IndentBlanklineContextChar guifg=#ebcb8b gui=nocombine')
require'indent_blankline'.setup {
    char = "▏",
    show_current_context = true,
}

-- Colorizer
require'colorizer'.setup()

-- Gitsigns
require'gitsigns'.setup()
