local servers = { 'clangd', 'denols', 'html', 'cssls', 'eslint', 'jsonls', 'intelephense', 'bashls' }
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        capabilities = capabilities
    }
end
