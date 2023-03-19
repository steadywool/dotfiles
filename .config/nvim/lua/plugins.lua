return require('packer').startup(function(use)
    -- Plugin manager
    use 'wbthomason/packer.nvim'

    -- Mason
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }

    -- Appearance
    use 'sainnhe/gruvbox-material'
    use 'kyazdani42/nvim-web-devicons'

    -- Completion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
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
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    -- Tools
    use 'kylechui/nvim-surround'
    use 'NvChad/nvim-colorizer.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'windwp/nvim-autopairs'


    -- Markdown preview
    use {
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end,
    }

    -- Search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-file-browser.nvim',
        }
    }

    -- Duck
    use 'tamton-aquib/duck.nvim'
end)
