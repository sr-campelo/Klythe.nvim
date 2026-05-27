local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

-- Lua
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
})
vim.lsp.enable('lua_ls')

vim.lsp.config('stylua', {
  cmd = { 'stylua' },
  filetypes = { 'lua' },
})
vim.lsp.enable('stylua')

-- Typst
vim.lsp.config('tinymist', {
  cmd = { 'tinymist' },
  filetypes = { 'typ' },
})
vim.lsp.enable('tinymist')

-- Markdown Oxide
vim.lsp.config('markdown_oxide', {
  cmd = { 'markdown-oxide' },
  filetypes = { '.obsidian', '.moxide.toml', '.git' },
  capabilities = capabilities,
})
vim.lsp.enable('markdown_oxide')
