-- Load all plugins under /lua/plugins
function require_plugins()
	for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins')) do
		require('plugins.' .. file:gsub('%.lua$', ''))
	end
end
