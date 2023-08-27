require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = {
    lua_ls = {
        Lua = {
            diagnostics = { globals = {'vim'} },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
        },
    },
    pylsp = {
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

-- Automatic LSP Config
require('mason-lspconfig').setup_handlers {
    function (server_name) -- default handler
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            settings = servers[server_name],
        }
    end,
}
