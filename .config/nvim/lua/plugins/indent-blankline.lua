require('indent_blankline').setup {
    char = '▏',
    show_current_context = true,
    show_current_context_start = true,
}

-- Disable some filetypes
vim.g.indent_blankline_filetype_exclude = {'dashboard', 'help'}
