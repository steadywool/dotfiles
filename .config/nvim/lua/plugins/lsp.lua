-- Lsp config
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
    "clangd", --C/C++
    "html", --HTML
    "cssls", --CSS
    "jsonls", --Json
    "intelephense", --PHP
    "bashls", --Bash
    "sumneko_lua", --Lua
    "tsserver", --Javascript/Typescript
    "eslint", -- Javascript Linter
}

for _, lsp in pairs(servers) do
    require("lspconfig")[lsp].setup {
        capabilities = capabilities,
        flags = { debounce_text_changes = 150 },
    }
end

-- Sumneko_lua
require("lspconfig").sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = { globals = "vim" },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
        },
    },
}
