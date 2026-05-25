return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  opts = {
    ensure_installed = {
      'lua',
      'markdown',
      'markdown_inline',
      'html',
      'css',
      'latex',
      'typst',
      'yaml',
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
