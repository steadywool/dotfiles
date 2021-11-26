return require('packer').startup(function(use)
    -- PACKAGE MANAGER
    use 'wbthomason/packer.nvim'

    -- APPEARANCE
    use 'sainnhe/edge'
    use 'kyazdani42/nvim-web-devicons'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'lewis6991/gitsigns.nvim'

    -- LSP
    use {
        -- config
        'neovim/nvim-lspconfig',

        -- snippet
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',

        --completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
    }

    -- TOOLS
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'iamcco/markdown-preview.nvim'
    use 'kyazdani42/nvim-tree.lua'

end)
