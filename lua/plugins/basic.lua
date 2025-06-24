return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup({
        enable_check_bracket_line = false,
      })
      local Rule = require('nvim-autopairs.rule')
      require('nvim-autopairs').add_rules({
        Rule('<', '>', { 'html', 'javascriptreact', 'typescriptreact', 'lua', 'rust' })
      })
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config
    opts = {},
  }
}

