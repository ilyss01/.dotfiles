vim.g.mapleader = ' '
local remap = vim.keymap.set

-- Quick file explorer
remap('n', '<leader>f', vim.cmd.Ex)

-- For my mistakes
remap('n', '<C-[>', vim.diagnostic.goto_prev)
remap('n', '<C-]>', vim.diagnostic.goto_next)

-- Find File, Find Inside
--local builtin = require('telescope.builtin')
--remap('n', '<leader>ff', builtin.find_files, {})
--remap('n', '<leader>fi', builtin.live_grep, {})

-- Zettelkasten
remap('n', '<leader>zl', vim.cmd.ZkInsertLink)
vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { noremap=true, silent=false })
