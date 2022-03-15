-- Nordic Theme
require('nordic').colorscheme({
    underline_option = 'none',
    italic = false,
    italic_comments = true,
    minimal_mode = false,
    alternate_backgrounds = false
})

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
