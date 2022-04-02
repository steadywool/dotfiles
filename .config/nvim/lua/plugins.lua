return require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Appearance
    use {
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
    }

    -- Completion
    use {
        -- snippet
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-vsnip',

        --completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',

        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
    }

    -- Tools
    use {
        'nvim-treesitter/nvim-treesitter',

        'iamcco/markdown-preview.nvim',

        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',

        'windwp/nvim-ts-autotag',
        'windwp/nvim-autopairs',
    }

end)
