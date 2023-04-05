-- Load all plugins under /lua/plugins
function Require_plugins()
	for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins')) do
		require('plugins.' .. file:gsub('%.lua$', ''))
	end
end

-- Change diagnostics signs
function Diagnostics_sign()
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end
