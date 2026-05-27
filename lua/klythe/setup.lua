require 'mini.pairs'.setup {}

require 'ibl'.setup {}

require 'gitsigns'.setup {
  signs = {
    add          = { text = "+" },
    change       = { text = "!" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
    untracked    = { text = "+" },
  },
}

require 'typst-preview'.setup {}

require 'zen-mode'.setup {}

require 'neo-tree'.setup {
  default_component_configs = {
    git_status = {
      symbols = {
        modified = '+',
        unstaged = '',
      },
    },
  },
}

require 'mason'.setup {}
