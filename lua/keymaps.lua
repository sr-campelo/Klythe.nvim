-- Clear higlights
vim.keymap.set('n', '<Esc>', '<cmd>nohls<CR>')

-- Window nav
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- Highlight when copying text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Telescope
vim.keymap.set('n', '<C-o>', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope live_grep<CR>')
