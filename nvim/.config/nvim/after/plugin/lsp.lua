-- Set LSP for needed langs
local lsp = require'lspconfig'

-- LSP's
lsp.rust_analyzer.setup{}

lsp.clangd.setup{}

lsp.texlab.setup{}

lsp.pylsp.setup{}

require'zk'.setup({
  picker = 'telescope',
  lsp = {
    config = {
      cmd = { 'zk', 'lsp' },
      name = 'zk',
      -- on_attach = ...
    },
    auto_attach = {
      enabled = true,
      filetypes = { 'markdown' },
    },
  },
})
