-- Theme
vim.cmd.colorscheme('retrobox') -- I also like kanawaga-lotus and peachpuff

-- Options
vim.o.nu = true -- numbers
vim.o.rnu = true -- relativenumber

-- Indentation
vim.o.et = true -- expandtab
vim.o.ts = 2 -- tabstop
vim.o.sw = 2 -- shiftwidth
vim.o.sr = true -- shiftround round indent to multiple of shiftwidth
vim.o.si = true -- smartindent
vim.o.bri = true -- breakindent
vim.o.list = true
vim.o.lcs = 'trail:·' -- add dots to spaces at the end of the line

-- Clipboard
vim.o.cb = 'unnamedplus' -- upgrade clipboard

-- Background
vim.o.bg = 'light' -- light background
vim.o.cul = true -- cursorline highlight

-- Showmode
vim.o.smd = false --disable last line (mini.statusline)

-- Quality of life
vim.o.cf = true -- confirm save before :q
vim.o.mps = '(:),{:},[:],<:>,«:»' -- highlight pairs
vim.o.mouse = 'n' -- mouse activated only on normal mode
vim.o.sb = true -- splitbelow
vim.o.so = 999 -- keep the cursor line always in the middle
vim.o.spr = true -- splitright
vim.o.tgc = true -- termguicolors
vim.o.tm = 750 -- timeoutlen
vim.o.ut = 250 -- updatetime

-- History
vim.o.udf = true -- save history
vim.o.history = 100 -- how much operations save
