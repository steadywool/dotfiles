-- Lsp config/installer
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())

capabilities.textDocument.completion.completionItem.snippetSupport = true

require'nvim-lsp-installer'.on_server_ready(function(server)
    local opts = {
        capabilities = capabilities
    }
    server:setup(opts)
end)

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
