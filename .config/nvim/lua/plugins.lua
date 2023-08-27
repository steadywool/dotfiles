-- Autostart Lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require('lazy').setup {
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',

            -- Snippets
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Additional snippets
            'rafamadriz/friendly-snippets',
        },
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        dependencies = {
        'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },

    -- Appearance
    'sainnhe/gruvbox-material',
    'kyazdani42/nvim-web-devicons',

    -- Status
    'nvim-lualine/lualine.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'lewis6991/gitsigns.nvim',
    'akinsho/bufferline.nvim',

    -- Dashboard
    'nvimdev/dashboard-nvim',

    -- Tools
    'NvChad/nvim-colorizer.lua',
    'windwp/nvim-autopairs',
    'iamcco/markdown-preview.nvim',

    -- Tree
    'nvim-tree/nvim-tree.lua',
}
