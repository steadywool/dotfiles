-- Autostart Lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require('lazy').setup {
    -- Appearance
    'sainnhe/gruvbox-material',
    'sainnhe/everforest',
    { 'kyazdani42/nvim-web-devicons', lazy = true },
    { 'glepnir/dashboard-nvim', event = 'VimEnter' },

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
    'neovim/nvim-lspconfig',

    -- LSP
    'williamboman/mason.nvim',
    'jose-elias-alvarez/null-ls.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- DAP
    'mfussenegger/nvim-dap',
    'rcarriga/dap-ui.nvim',

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
            'nvim-telescope/telescope-file-browser.nvim',
        },
    },

    -- Folding
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            'kevinhwang91/promise-async',
        },
    },
}
