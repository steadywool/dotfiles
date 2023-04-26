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
    'omnisharp', --C#
    'arduino_language_server', --Arduino
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

-- Omnisharp
require('lspconfig').omnisharp.setup {
    cmd = { 'dotnet', '/home/kani/.local/share/nvim/mason/packages/omnisharp/OmniSharp' },
    enable_editorconfig_support = true,
    enable_ms_build_load_projects_on_demand = false,
    enable_roslyn_analyzers = false,
    organize_imports_on_format = false,
    enable_import_completion = false,
    sdk_include_prereleases = true,
    analyze_open_documents_only = false,
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
