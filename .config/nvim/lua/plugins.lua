return require('packer').startup(function()
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Theme & colors
    use 'norcalli/nvim-colorizer.lua'
    use 'chriskempson/base16-vim'
    use {'sheerun/vim-polyglot', opt = true}
    use {'sainnhe/everforest'}

    -- Lsp server
    use 'neovim/nvim-lspconfig'

    -- Snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    --Autocompletion
    use'hrsh7th/nvim-cmp'
    use'hrsh7th/cmp-nvim-lsp'
end)
