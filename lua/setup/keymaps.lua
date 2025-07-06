local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Clear higlights
map('n', '<Esc>', '<cmd>nohls<CR>')

-- Window nav
map('n', '<C-h>', '<C-w><C-h>', {desc = 'Move to left window'})
map('n', '<C-j>', '<C-w><C-j>', {desc = 'Move to below window'})
map('n', '<C-k>', '<C-w><C-k>', {desc = 'Move to upper window'})
map('n', '<C-l>', '<C-w><C-l>', {desc = 'Move to right window'})

-- Split window below
map('n', '<leader>s', '<cmd>split<CR>', { desc = 'Split window below' })

-- Highlight when copying text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Autoindenting
map('n', '<C-i>', 'magg=G`a', { desc = 'Indent the whole file and move to the same position' })
