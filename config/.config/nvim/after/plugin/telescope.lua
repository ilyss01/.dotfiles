-- Include hidden files
require('telescope').setup {
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            hidden = true,
        },
    },
}
