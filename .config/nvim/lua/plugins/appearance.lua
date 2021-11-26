-- Indent blankline
require("indent_blankline").setup {
    char = "┊",
}

-- Colorizer
require'colorizer'.setup()

-- TreeSitter
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
--        disable = { "html", "php" },
        additional_vim_regex_highlighting = false
    },
}

-- Gitsigns
require'gitsigns'.setup()
