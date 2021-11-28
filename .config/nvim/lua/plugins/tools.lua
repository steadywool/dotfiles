-- Telescope
require'telescope'.setup {
}

-- Nvim Tree
require'nvim-tree'.setup {
   view = {
        width = 30,
        height = 30,
    }
}

-- TreeSitter
require'nvim-treesitter.configs'.setup {
    autotag = {enable = true},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

-- Autopairs
require'nvim-autopairs'.setup()
