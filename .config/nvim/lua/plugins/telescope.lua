require('telescope').setup {
    pickers =  {
        file_browser = {
            file_ignore_patterns = {
                "git"
            },
            hidden = true,
        }
    }
}
