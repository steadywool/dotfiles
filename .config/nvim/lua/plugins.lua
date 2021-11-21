return require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Appearance
    use 'sainnhe/edge'
    use 'kyazdani42/nvim-web-devicons'
    use "lukas-reineke/indent-blankline.nvim"

    -- Tools
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'iamcco/markdown-preview.nvim'

    -- Lsp server
    use 'neovim/nvim-lspconfig'

    -- Snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    --Autocompletion
    use'hrsh7th/nvim-cmp'
    use'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    --Treesitter
    use'nvim-treesitter/nvim-treesitter'
end)
