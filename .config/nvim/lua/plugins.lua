return require('packer').startup(function(use)
    -- PACKAGE MANAGER
    use 'wbthomason/packer.nvim'

    -- APPEARANCE
    use {
        'shaunsingh/nord.nvim',
        'andersevenrud/nordic.nvim',

        'lukas-reineke/indent-blankline.nvim',
        'norcalli/nvim-colorizer.lua',
        'lewis6991/gitsigns.nvim',
    }

    -- LSP
    use {
        -- config
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',

        -- snippet
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-vsnip',

        --completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',

        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
    }

    -- TOOLS
    use {
        'nvim-treesitter/nvim-treesitter',

        'iamcco/markdown-preview.nvim',

        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',

        'windwp/nvim-ts-autotag',
        'windwp/nvim-autopairs',
    }

end)
