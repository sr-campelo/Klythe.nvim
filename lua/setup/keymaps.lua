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

-- Highlight when copying text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Autoindenting
map('n', '<C-i>', 'magg=G`a')
