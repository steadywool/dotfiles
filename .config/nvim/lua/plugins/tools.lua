-- Telescope
require'telescope'.setup {}

-- Nvim Tree
require'nvim-tree'.setup {
   view = {
        width = 30,
        height = 30,
    }
}

-- TreeSitter
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    incremental_selection = { enable = true },
}
