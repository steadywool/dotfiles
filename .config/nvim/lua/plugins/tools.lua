-- Telescope
require'telescope'.setup {}

-- Autopairs
require'nvim-autopairs'.setup {}

-- TreeSitter
require'nvim-treesitter.configs'.setup {
    autotag = {
        enable = true,
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    incremental_selection = { enable = true },
}
