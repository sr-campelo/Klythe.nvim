return {
  {
    'rebelot/kanagawa.nvim',
    opts = {
      compile = true,
    },
    config = function()
      vim.cmd('colorscheme kanagawa-lotus')
    end,
  },
}
