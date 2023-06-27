local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
    'html', --HTML
    'cssls', --CSS
    'jsonls', --JSON
    'eslint', --Javascript/Typescript
    'tsserver', --Javascript/Typescript
    'intelephense', --PHP

    'pyright', --Python
    'pylsp', -- Python

    'clangd', --C/C++
    'bashls', --Bash
    'lua_ls', --Lua
}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
    }
end

-- Lua
require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = {'vim'} },
            workspace = { library = vim.api.nvim_get_runtime_file('', true) },
            telemetry = { enable = false },
        },
    },
}

-- PyLSP
require('lspconfig').pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {'E722'},
                    maxLineLength = 150
                }
            }
        }
    }
}
