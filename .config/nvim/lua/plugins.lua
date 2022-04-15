return require("packer").startup(function(use)
    -- Plugin manager
    use "wbthomason/packer.nvim"

    -- Appearance
    use {
        "andersevenrud/nordic.nvim",
        "sainnhe/gruvbox-material",
        "sainnhe/everforest",

        "kyazdani42/nvim-web-devicons",

        "andweeb/presence.nvim",
    }

    -- Auto-completion
    use {
        -- Snippet
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",

        -- Completion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",

        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-calc",
    }

    -- LSP
    use {
        "neovim/nvim-lspconfig",
    }

    -- Tools
    use {
        "lukas-reineke/indent-blankline.nvim",
        "norcalli/nvim-colorizer.lua",
        "lewis6991/gitsigns.nvim",

        "iamcco/markdown-preview.nvim",

        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",

        "kyazdani42/nvim-tree.lua",

        "windwp/nvim-autopairs",
        "windwp/nvim-ts-autotag",
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
    }
end)
