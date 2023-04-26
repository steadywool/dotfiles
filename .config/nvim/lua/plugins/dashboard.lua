require('dashboard').setup {
    theme = 'hyper',
    config = {
        week_header = { enable = true },
        shortcut = {
            {
                desc = ' Update',
                group = 'Number',
                action = 'Lazy update',
                key = 'u',
            },
            {
                desc = ' Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                desc = ' Browse',
                group = 'Character',
                action = 'Telescope file_browser',
                key = 'b',
            },
        },
    },
}
