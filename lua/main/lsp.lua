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
  config = function()
    -- Add here every lsp you want to work with
    -- Easy install with other/mason
    require 'lspconfig'.lua_ls.setup {}
  end,
}
