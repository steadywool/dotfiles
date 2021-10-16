 -- Lsp config
local servers = { 'clangd', 'html', 'cssls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup{
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

-- Snippet
local luasnip = require 'luasnip'

-- Omnicompletion
vim.cmd('autocmd FileType cpp set omnifunc=v:lua.vim.lsp.omnifunc')
vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Autocompletion
local cmp = require'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }
})
