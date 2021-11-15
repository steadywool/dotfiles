return require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Appearance
    use 'sainnhe/edge'
    use 'kyazdani42/nvim-web-devicons'

    -- Tools
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'

    -- Lsp server
    use 'neovim/nvim-lspconfig'

    -- Snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    --Autocompletion
    use'hrsh7th/nvim-cmp'
    use'hrsh7th/cmp-nvim-lsp'

    --Treesitter
    use'nvim-treesitter/nvim-treesitter'
end)
