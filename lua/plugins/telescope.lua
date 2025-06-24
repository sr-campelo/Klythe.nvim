return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
     {'nvim-lua/plenary.nvim'},
     {
       'nvim-telescope/telescope-fzf-native.nvim',
       build = 'make',
       cond = function()
         return vim.fn.executable 'make' == 1
       end,
     },
    },
  },
 }

