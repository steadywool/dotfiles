return require('packer').startup(function()
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Theme & colors
    use 'chriskempson/base16-vim'
    use 'norcalli/nvim-colorizer.lua'

    -- Lsp server
    use 'neovim/nvim-lspconfig'

    -- Snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    --Autocompletion
    use'hrsh7th/nvim-cmp'
    use'hrsh7th/cmp-nvim-lsp'
end)
