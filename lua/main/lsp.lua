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
  },
    -- Add here every lsp you want to work with
    -- Easy install with other/mason
  config = function()
    vim.lsp.config['lua_ls'] = {}
    vim.lsp.enable('lua_ls')
  end,
}
