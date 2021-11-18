require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { "html", "php" },
        additional_vim_regex_highlighting = false
    },
}
