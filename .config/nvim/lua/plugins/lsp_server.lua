 -- Lsp config
local servers = { 'clangd', 'html', 'cssls', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup{
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

---------------------------------------------------------------------------------------------------
-- Sumneko config
-- sumneko path
local sumneko_root_path = "/home/kani/.local/share/nvim/lua-language-server"
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

-- Default sumneko config
require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = runtime_path,
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
