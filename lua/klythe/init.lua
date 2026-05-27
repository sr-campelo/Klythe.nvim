-- Leader configuration
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Mappings
require 'klythe.keymaps'
require 'klythe.mappings'

-- Pack
require 'klythe.pack'
require 'klythe.setup'

-- Lsp config
require 'klythe.lsp'

-- Colorscheme
vim.cmd.colorscheme 'retro'

