-- Lua
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          '${3rd}/luv/library'
        },
      },
    },
    diagnostics = {
      globals = { 'vim' },
    },
  },
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
  filetypes = { 'typst' },
})
vim.lsp.enable('tinymist')

-- Markdown Oxide
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

vim.lsp.config('markdown_oxide', {
  cmd = { 'markdown-oxide' },
  filetypes = { 'markdown' },
  root_markers = { '.obsidian', '.moxide.toml', '.git' },
  capabilities = capabilities,
})
vim.lsp.enable('markdown_oxide')
