local opt = vim.opt
-- Options
opt.nu = true -- numbers
opt.rnu = true -- relativenumber

-- Indentation
opt.et = true -- expandtab
opt.ts = 2 -- tabstop
opt.sw = 2 -- shiftwidth
opt.sr = true -- shiftround round indent to multiple of shiftwidth
opt.si = true -- smartindent
opt.bri = true -- breakindent
opt.list = true
opt.lcs = 'trail:·' -- add dots to spaces at the end of the line

-- Clipboard
opt.cb = 'unnamedplus' -- upgrade clipboard

-- Autocomplete
opt.ac = true --autocomplete
opt.cpt = '.,o,w,b' --complete
opt.cot = 'menu,menuone,noselect,nearest'
opt.ph = 5
opt.pmw = 400

-- Background
opt.bg = 'light' -- light background
opt.cul = true -- cursorline highlight

-- Showmode
opt.stl = '[%n] %<%f %h%w%m%r%=%-14.(%l,%c%V%) %P' --statusline

-- Quality of life
opt.cf = true -- confirm save before :q
opt.mps = '(:),{:},[:],<:>,«:»' -- highlight pairs
opt.lbr = true -- linebreak
opt.mouse = 'n' -- mouse activated only on normal mode
opt.sb = true -- splitbelow
opt.so = 999 -- keep the cursor line always in the middle
opt.spr = true -- splitright
opt.tgc = true -- termguicolors
opt.tm = 750 -- timeoutlen
opt.ut = 250 -- updatetime

-- History
opt.udf = true -- save history
opt.history = 100 -- how much operations save

-- Highlight when copying text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- LspAttach
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, {
        autotrigger = true,
      })
    end
  end,
})
