vim.fn.sign_define('DapBreakpoint', {text='', texthl='Type', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='󰯳', texthl='Conditional', linehl='', numhl=''})
vim.fn.sign_define('DapLogpoint', {text='󰰎', texthl='Boolean', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='→', texthl='Character', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='󰰠', texthl='Conditional', linehl='', numhl=''})

---------------------------------------------------------------------
-- C/C++/Rust
require("dap").adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
}

require('dap').configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
    },
}

require('dap').configurations.c = require('dap').configurations.cpp
require('dap').configurations.rust = require('dap').configurations.cpp
