require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Automatic LSP Config
require('mason-lspconfig').setup_handlers {
    function (server_name) -- default handler
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
        }
    end,

    -- Lua Language Server
    ["lua_ls"] = function ()
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
    end,

    -- Omnisharp
    ["omnisharp"] = function ()
        require('lspconfig').omnisharp.setup {
            cmd = { 'dotnet', '/home/kani/.local/share/nvim/mason/packages/omnisharp/OmniSharp' },
            enable_editorconfig_support = true,
            enable_ms_build_load_projects_on_demand = false,
            enable_roslyn_analyzers = false,
            organize_imports_on_format = false,
            enable_import_completion = false,
            sdk_include_prereleases = true,
            analyze_open_documents_only = false,
            useModernNet = false,
        }
    end,

    ["pylsp"] = function ()
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
    end,
}
