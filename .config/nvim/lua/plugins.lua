return require('packer').startup(function(use)

    -- Plugin/Package Manager
    use {
        'wbthomason/packer.nvim',
        'williamboman/mason.nvim',
    }

    -- Appearance
    use {
        'sainnhe/gruvbox-material',
        'sainnhe/everforest',
        'kyazdani42/nvim-web-devicons',
    }

    -- Auto-completion
    use {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',

        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',

        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
    }

    -- Library
    use {
        'nvim-lua/plenary.nvim',
    }

    -- Tools
    use {
        'lukas-reineke/indent-blankline.nvim',
        'norcalli/nvim-colorizer.lua',
        'lewis6991/gitsigns.nvim',
        'iamcco/markdown-preview.nvim',

        'nvim-telescope/telescope.nvim',

        'windwp/nvim-autopairs',
        'windwp/nvim-ts-autotag',
    }
end)
