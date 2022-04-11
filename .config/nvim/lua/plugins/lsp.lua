-- Lsp installer
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'nvim-lsp-installer'.on_server_ready(function(server)
    local opts = {
        capabilities = capabilities,
    }

    -- Sumneko
    if server.name == "sumneko_lua" then
        opts = {
            settings = {
                Lua = {
                    diagnostics = { globals = 'vim' },
                    workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                    telemetry = { enable = false },
                },
            },
        }
    end

    server:setup(opts)
end)
