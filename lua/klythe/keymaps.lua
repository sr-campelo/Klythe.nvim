local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Clear higlights
map('n', '<Esc>', '<cmd>nohls<CR>')

-- Window nav
map('n', '<C-h>', '<C-w><C-h>')
map('n', '<C-j>', '<C-w><C-j>')
map('n', '<C-k>', '<C-w><C-k>')
map('n', '<C-l>', '<C-w><C-l>')

-- Split window
map('n', '<leader>sv', '<cmd>vsplit<CR>')
map('n', '<leader>sh', '<cmd>split<CR>')

-- Resize window
map('n', '<C-Up>', '<cmd>resize +2<CR>')
map('n', '<C-Down>', '<cmd>resize -2<CR>')
map('n', '<C-Right>', '<cmd>vertical resize -2<CR>')
map('n', '<C-Left>', '<cmd>vertical resize +2<CR>')

-- Autoindenting
map('n', '<C-i>', 'magg=G`a')

-- .md references
map('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')

-- neotree
map('n', '//', ':Neotree reveal<CR>')

-- fzf
map('n', '<C-o>', '<cmd>FzfLua files<CR>')
map('n', '<leader><leader>', '<cmd>FzfLua live_grep<CR>')
map('n', '<leader>fzf', '<cmd>FzfLua<CR>')
map('n', '<leader>k', '<cmd>FzfLua keymaps<CR>')
map('n', '<leader>o', '<cmd>FzfLua buffers<CR>')
map('n', '<C-/>', '<cmd>FzfLua lgrep_curbuf<CR>')

-- zen
map('n', '<leader>z', '<cmd>ZenMode<CR>')

-- LuaSnip
map({ 'i', 's' }, '<C-k>', function()
  local ls = require 'luasnip'
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

