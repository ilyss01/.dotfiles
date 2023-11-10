vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Package manager
    -- https://github.com/wbthomason/packer.nvim
    use 'wbthomason/packer.nvim'

    -- Make nvim code editor
    -- https://github.com/echasnovski/mini.nvim
    use 'echasnovski/mini.nvim'

    -- Pretty syntax highlighting
    -- https://github.com/nvim-treesitter/nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Global search of file and their content
    -- https://github.com/nvim-telescope/telescope.nvim
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- LSP
    -- https://github.com/neovim/nvim-lspconfig
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    use 'neovim/nvim-lspconfig'

    -- Zettelkasten
    -- https://github.com/mickael-menu/zk-nvim
    use 'mickael-menu/zk-nvim' 

    -- Nice
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    local wk = require("which-key")
    wk.register(mappings, opts)

    use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-cmdline'

end)
