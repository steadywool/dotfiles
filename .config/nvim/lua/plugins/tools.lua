-- Indent blankline
require("indent_blankline").setup {
    char = "▏",
    show_current_context = true,
}

-- Telescope
require("telescope").setup()

-- Gitsigns
require("gitsigns").setup()

-- Colorizer
require("colorizer").setup()

-- Autopairs
require("nvim-autopairs").setup()
