vim.g.mapleader = ' '
local opts = { noremap=true, silent=false }

-- Quick file explorer
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- For my mistakes
vim.keymap.set('n', '<C-[>', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<C-]>', vim.diagnostic.goto_next)

-- Find File, Find Inside
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fi', builtin.live_grep, {})

-- Zettelkasten
vim.keymap.set('n', '<leader>zl', vim.cmd.ZkInsertLink)
vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
