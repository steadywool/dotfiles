return require('packer').startup(function(use)
    -- Plugin/Package Manager
    use 'wbthomason/packer.nvim'
    use 'williamboman/mason.nvim'

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
        'nvim-treesitter/nvim-treesitter-textobjects',
    }

    -- Surround
    use 'kylechui/nvim-surround'

    -- Tools
    use 'lukas-reineke/indent-blankline.nvim'
    use 'NvChad/nvim-colorizer.lua'
    use 'lewis6991/gitsigns.nvim'

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
end)
