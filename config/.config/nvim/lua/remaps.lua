-- binds for dealing with word wrap
local bind = vim.keymap.set
local remap = { remap = true }

-- Leader 
bind("n", "<leader>f", ":silent Ex %:p:h<CR>")
--bind("n", "<leader>q", ":silent Lex %:p:h<CR>:silent vertical resize 30<CR>")

-- LaTeX
bind("n", "<leader>lc", ":silent !latexmk -pdf -output-directory=build %<CR>", { desc = "Compile LaTeX document" })
bind("n", "<leader>lp", ":silent !setsid -f zathura build/%:r.pdf<CR>", { desc = "Show compiled document" })

-- Movement fix
bind("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
bind("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- For my mistakes 
bind("n", "<C-]>", vim.diagnostic.goto_next, remap)
bind("n", "<C-[>", vim.diagnostic.goto_prev, remap)

-- Helix binds
--bind("n", "x", "V")
--bind("n", "xx", "V")
bind("v", "x", "")
bind("v", "xx", "")
bind("n", "ge", "G")
bind("v", "ge", "G")
bind("n", "G", "")
bind("n", "U", "<C-r>")
bind("n", "<C-r>", "")

-- Tabs
bind("n", "<leader>tn", vim.cmd.tabnew, { desc = "Create new tab" })
bind("n", "<leader>tj", vim.cmd.tabnext, { desc = "Switch to next tab" })
bind("n", "<leader>tk", vim.cmd.tabprevious, { desc = "Switch to previous tab" })
bind("n", "<leader>tc", vim.cmd.tabclose, { desc = "Close tab" })
bind("n", "<leader>tt", vim.cmd.terminal, { desc = "Open terminal" })

-- Splits
bind("n", "<C-s>", ":vsplit<CR>", { desc = "Vertical split" })
bind("n", "<C-h>", "<C-w>h", { desc = "Switch to left split" })
bind("n", "<C-j>", "<C-w>j", { desc = "Switch to bottom split" })
bind("n", "<C-k>", "<C-w>k", { desc = "Switch to top split" })
bind("n", "<C-l>", "<C-w>l", { desc = "Switch to right split" })

-- Move around
bind("v", "J", ":m '>+1<CR>gv=gv")
bind("v", "K", ":m '<-2<CR>gv=gv")

-- Brackets
bind("i", "'", "''<left>")
bind("i", "\"", "\"\"<left>")
bind("i", "(", "()<left>")
bind("i", "[", "[]<left>")
bind("i", "{", "{}<left>")
bind("i", "{;", "{};<left><left>")
bind("i", "/*", "/**/<left><left>")
bind("i", "<", "<><left>")
--bind("i", "<C-n>", "<C-x><C-]>") -- autocomplete
bind("i", "<C-f>", "<C-x><C-f>") -- autocomplete

-- Wiki binds
bind("n", "<leader>ww", ":lua require('kiwi').open_wiki_index()<CR>", { desc = "Open Wiki index" })
bind("n", "<leader>wp", ":lua require('kiwi').open_wiki_index('personal')<CR>", {desc = "Open index of personal wiki"})
bind("n", "<leader>wt", ":lua require('kiwi').todo.toggle()<CR>", { desc = "Toggle Markdown Task" })
bind("n", "<leader>wd", ":r ~/notes/daily.md<CR>ggdd", { desc = "Use daily.md template" })

-- netrw
vim.api.nvim_create_autocmd("filetype", {
  pattern = "netrw",
  desc = "Better mappings for netrw",
  callback = function()
    local netrw_bind = function(lhs, rhs)
      vim.keymap.set("n", lhs, rhs, {remap = true, buffer = true})
    end
    -- New file 
    netrw_bind("i", "%")
    netrw_bind("I", "%")
    netrw_bind("a", "%")
    netrw_bind("A", "%")

    -- New directory
    netrw_bind("o", "d")
    netrw_bind("O", "d")

    -- Rename 
    netrw_bind("r", "R")

    -- Remove 
    netrw_bind("dd", "D")
  end
})
