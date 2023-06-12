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
    use 'neovim/nvim-lspconfig'

    -- Zettelkasten
    -- https://github.com/mickael-menu/zk-nvim
    use 'mickael-menu/zk-nvim' 

end)
