-- Autostart Lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require('lazy').setup {
    -- Appearance
    'sainnhe/edge',
    'sainnhe/everforest',
    'sainnhe/gruvbox-material',
    { 'kyazdani42/nvim-web-devicons', lazy = true },

    ---------------------------------------------------------------------
    -- Completion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
        },
    },

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    ---------------------------------------------------------------------
    -- Mason
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
        },
    },

    -- LSP
    'williamboman/mason.nvim',
    'jose-elias-alvarez/null-ls.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    ---------------------------------------------------------------------
    -- Status
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',

    -- Tools
    'NvChad/nvim-colorizer.lua',
    'windwp/nvim-autopairs',
    'iamcco/markdown-preview.nvim',

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },

    -- Tree
    'nvim-tree/nvim-tree.lua',
}
