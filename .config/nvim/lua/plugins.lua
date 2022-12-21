return require('packer').startup(function(use)
    -- Plugin/Package Manager
    use 'wbthomason/packer.nvim'
    use 'williamboman/mason.nvim'

    -- Appearance
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/everforest'
    use 'kyazdani42/nvim-web-devicons'

    -- Completion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
        }
    }

    -- Snippets
    use {
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        'jose-elias-alvarez/null-ls.nvim',
    }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Tools
    use 'lukas-reineke/indent-blankline.nvim'
    use 'NvChad/nvim-colorizer.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'iamcco/markdown-preview.nvim'
    use 'romgrk/barbar.nvim'

    -- Search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-file-browser.nvim',
        }
    }

    -- Autopair & autotag
    use {
        'windwp/nvim-autopairs',
        'windwp/nvim-ts-autotag',
    }
end)
