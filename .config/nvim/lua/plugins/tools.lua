-- Indent blankline
require("indent_blankline").setup {
    char = "▏",
    show_current_context = true,
    show_current_context_start = true,
}

-- Gitsigns
require("gitsigns").setup()

-- Colorizer
require("colorizer").setup()

-- Autopairs
require("nvim-autopairs").setup()

-- Autotag
require("nvim-ts-autotag").setup()
