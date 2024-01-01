require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'lua', 'vim', 'vimdoc', 'c', 'python', 'rust', 'markdown', 'toml', 'latex' },
    ignore_install = { 'cpp' },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = { 'markdown' },
    },
    indent = { enable = true },
}
