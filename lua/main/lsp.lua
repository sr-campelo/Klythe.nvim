
return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = {
        library = {
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
  },
  settings = {
    ['lua_ls'] = {},
    ['tinymist'] = {},
    ['markdown_oxide'] = {},
  },
  -- Add here every lsp you want to work with
  -- Easy install with other/mason
  config = function()
    -- lua_ls
    vim.lsp.config['lua_ls'] = {}
    vim.lsp.enable('lua_ls')

    -- markdown_oxide
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    vim.lsp.config['markdown_oxide'] = {

      capabilities = vim.tbl_deep_extend(
        'force',
        capabilities,
        {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        }
      )
    }
    vim.lsp.enable('markdown_oxide')

    -- tinymist
    vim.lsp.config['tinymist'] = {}
    vim.lsp.enable('tinymist')
  end
}
