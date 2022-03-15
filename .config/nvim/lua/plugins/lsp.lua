-- Lsp config
local capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
    'clangd',
    'html', 'cssls', 'jsonls', 'eslint',
    'emmet_ls',
    'intelephense',
    'bashls',
    'tsserver',
    'sumneko_lua',
    'arduino_language_server',
}

for _, lsp in pairs(servers) do
    require'lspconfig'[lsp].setup {
        capabilities = capabilities,
        flags = { debounce_text_changes = 150 },
    }
end

-- Sumneko
require'lspconfig'.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = { globals = 'vim' },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
        },
    },
}

-- Arduino
require'lspconfig'.arduino_language_server.setup {
    cmd =  {
	    "arduino-language-server",
		"-cli-config", "$HOME/.arduino15/arduino-cli.yaml",
		"-cli", "/bin/arduino_language_server",
		"-clangd", "/bin/clangd"
	}
}

-- Completion
local cmp = require'cmp'
require'cmp'.setup ({
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete( 'i', 'c' ),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'path' },
        { name = 'buffer' },
    }
})

