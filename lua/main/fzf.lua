return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  keys = {
    { '<C-o>', '<cmd>FzfLua files<CR>' },
    { '<leader><leader>', '<cmd>FzfLua live_grep<CR>' },
    { '<leader>fzf', '<cmd>FzfLua<CR>' },
    { '<leader>k', '<cmd>FzfLua keymaps<CR>' },
    { '<leader>fs', '<cmd>FzfLua lgrep_curbuf<CR>' },
  },
  opts = {},
}
