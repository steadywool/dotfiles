local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
    'html', --HTML
    'cssls', --CSS
    'jsonls', --JSON
    'eslint', --Javascript/Typescript

    'clangd', --C++
    'omnisharp', --C#
    'intelephense', --PHP
    'bashls', --Bash
    'sumneko_lua', --Lua
    'tsserver', --Javascript/Typescript
    'dockerls', --Dockerfile
    'marksman', --Markdown
    'pyright', --Python
}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
        flags = { debounce_text_changes = 150 },
    }
end

-- Sumneko_lua
require('lspconfig').sumneko_lua.setup {
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
    cmd = { 'dotnet', '/home/kani/.local/share/nvim/mason/packages/omnisharp/OmniSharp.dll' },
    enable_editorconfig_support = true,
    enable_ms_build_load_projects_on_demand = false,
    enable_roslyn_analyzers = false,
    organize_imports_on_format = false,
    enable_import_completion = false,
    sdk_include_prereleases = true,
    analyze_open_documents_only = false,
    useModernNet = false,
}
