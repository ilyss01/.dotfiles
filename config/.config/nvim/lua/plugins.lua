-- lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
    -- Key hints
    {
        "folke/which-key.nvim",
        opts = {}
    },

    -- Colorscheme
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false,
        priority = 1000,
        terminal_colors = true,
        enable_italics = true,
        style = "dark",
        config = function()
            vim.cmd.colorscheme("NeoSolarized")
        end
    },

    -- Better highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "c", "python", "rust", "markdown", "toml", "latex", "haskell" },
                ignore_install = { "cpp" },
                indent = { enable = true },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    use_languagetree = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
            })
        end,
    },

    -- Wiki
    {
        "serenevoid/kiwi.nvim",
        lazy = true,
        opts = {
            {
                name = "notes",
                path = "/home/ilyss/notes"
            },
        },
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- LSP
    {
        "neovim/nvim-lspconfig",
        opts = {},
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.gopls.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.texlab.setup({})
            lspconfig.hls.setup({})
            lspconfig.marksman.setup({})
        end,
    },

    -- Completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp", opts = {} },
            { "hrsh7th/cmp-path" },
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                }, {
                        { name = "buffer" },
                    })
            })
        end,
    }

},{})
