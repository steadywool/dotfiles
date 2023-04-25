-- Autostart Lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require('lazy').setup {
    -- Appearance
    'sainnhe/gruvbox-material',
    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-web-devicons',

    -- Completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    -- Mason
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- LSP
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Tools
    'NvChad/nvim-colorizer.lua',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'windwp/nvim-autopairs',
    'iamcco/markdown-preview.nvim',

    -- Telescope
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',

    -- Folding
    'kevinhwang91/nvim-ufo',
    'kevinhwang91/promise-async',
}
