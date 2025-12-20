-- Lazy setup
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error clonando lazy.nvim' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- Leader configuration
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'setup.keymaps'
require 'setup.mappings'

-- Plugins
require('lazy').setup({
  spec = {
    { import = 'main' },
    { import = 'other' }, -- Comment to disable
  },
})

vim.cmd.colorscheme 'retro'
