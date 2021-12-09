-- Lsp config
local servers = { 'clangd', 'denols', 'html', 'cssls', 'tailwindcss', 'eslint', 'jsonls', 'intelephense', 'bashls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

-- Completion
local cmp = require'cmp'
cmp.setup({
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    snippet = {
       expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'path' },
        { name = 'buffer' },
    }
})
