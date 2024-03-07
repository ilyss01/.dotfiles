-- Important for plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- File manager
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- Experimental
vim.opt.path:append '**'

-- Shared system clipboard
vim.o.clipboard = "unnamedplus"

-- Comfy comptletion
vim.o.completeopt = "menuone,noselect"
vim.cmd("set wildmenu")
vim.cmd("set wildmode=list:full")

-- No vi compatibility 
vim.o.compatible = false

-- Break indent
vim.o.breakindent = true

-- Numbers 
vim.wo.number = true

-- Amount of lines below cursor
vim.o.scrolloff = 15

-- Search
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrapscan = true
--vim.o.inccommand = "split"

-- Tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Check filetype (vimwiki)
vim.bo.filetype = true

-- Folding 
vim.o.foldmethod = "indent"
vim.o.foldlevelstart = 20
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- zc - Close (fold) the current fold under the cursor.
-- zo - Open (unfold) the current fold under the cursor.

-- Term colors
vim.o.termguicolors = true

-- Sane bar
vim.o.cmdheight = 0

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- Useless I guess
vim.o.swapfile = false
vim.o.backup = false
