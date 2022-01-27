-- Lsp config
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
    'clangd',
    'html', 'cssls', 'jsonls', 'eslint',
    'emmet_ls',
    'tailwindcss',
    'intelephense',
    'bashls',
    'tsserver'
}

for _, lsp in pairs(servers) do
    require'lspconfig'[lsp].setup {
        capabilities = capabilities,
        flags = { debounce_text_changes = 150 },
    }
end

-- Completion
local cmp = require'cmp'
require'cmp'.setup ({
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
        ['<C-Space>'] = cmp.mapping.complete({ 'i', 'c' }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'path' },
        { name = 'buffer' },
    }
})
