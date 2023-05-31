require('dashboard').setup {
    theme = 'hyper',
    config = {
        shortcut = {
            {
                desc = '󰚰 Update',
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
                desc = ' New',
                group = 'Identifier',
                action = 'enew',
                key = 'n',
            },
            {
                desc = ' Browse',
                group = 'Character',
                action = 'NvimTreeToggle',
                key = 'b',
            },
        },
    },
}
