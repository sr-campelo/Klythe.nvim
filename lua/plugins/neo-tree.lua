return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  ---@module 'neo-tree'
  ---@type neotree.Config?
  keys = {
    { '//', ':Neotree reveal<CR>', silent = true }
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
--        hide_dotfiles = false,
      },
      window = {
        mappings = {
          ['//'] = 'close_window',
        },
      },
    },
  },
}
