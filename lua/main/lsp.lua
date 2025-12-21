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
  },
    -- Add here every lsp you want to work with
    -- Easy install with other/mason
  config = function()
    vim.lsp.config['lua_ls'] = {}
    vim.lsp.enable('lua_ls')
  end,
  config = function ()
    vim.lsp.config['tinymist'] = {}
    vim.lsp.enable('tinymist')
  end
}
