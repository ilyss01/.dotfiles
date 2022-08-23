return require('packer').startup(function(use)
  -- Packer can manage itself
  -- https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'

  -- https://github.com/echasnovski/mini.nvim
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  require('mini.completion').setup({})
  require('mini.pairs').setup({})
  require('mini.surround').setup({})
  --require('mini.terminals').setup({})

end)
