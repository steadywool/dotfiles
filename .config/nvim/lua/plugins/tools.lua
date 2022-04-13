-- Indent blankline
require("indent_blankline").setup {
    char = "▏",
    show_current_context = true,
}

-- Telescope
require("telescope").setup()

-- Nvim-tree
require("nvim-tree").setup {
    open_on_setup_file = true,
    view = {
    width = 35,
    height = 35,
    side = "right",
    },
}


-- Autopairs
require("nvim-autopairs").setup()

-- Colorizer
require("colorizer").setup()
