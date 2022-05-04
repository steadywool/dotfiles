return require("packer").startup(function(use)
    -- Plugin manager
    use "wbthomason/packer.nvim"

    -- Appearance
    use {
        "kyazdani42/nvim-web-devicons",

        -- Themes
        "andersevenrud/nordic.nvim",
    }

    -- Auto-completion
    use {
        -- Snippets
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",

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

    -- Library
    use {
        "nvim-lua/plenary.nvim",
    }

    -- Tools
    use {
        "lukas-reineke/indent-blankline.nvim",
        "norcalli/nvim-colorizer.lua",
        "lewis6991/gitsigns.nvim",

        "iamcco/markdown-preview.nvim",

        -- File explorers
        "nvim-telescope/telescope.nvim",
        "kyazdani42/nvim-tree.lua",

        -- Autotag/Autopairs
        "windwp/nvim-autopairs",
        "windwp/nvim-ts-autotag",
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
    }
end)
