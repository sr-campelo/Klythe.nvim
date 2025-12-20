if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'retro'

local palette = require('colorscheme.retro-variables').colors

local hl = function (group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- main foregrounds and main backgrounds
hl('Normal', { fg = palette.main_ink, bg = palette.color_base_00 })
hl('NormalNC', { fg = palette.main_ink, bg = palette.color_base_00 })
hl('LineNr', { fg = palette.main_ink, bg = palette.color_base_00 })
hl('CursorLine', { bg = palette.color_base_00 })
hl('CursorLineNr', { fg = palette.main_ink, bg = palette.color_base_00, bold = true })

-- coments and syntax
hl('Comment', { fg = palette.secondary_ink, italic = true })
hl('String', { fg = palette.italic_accent_ink })
hl('Keyword', { fg = palette.bold_accent_ink, bold = true })
hl('function', { fg = palette.italic_accent_ink, bold = true, italic = true })

-- float windows
hl('NormalFloat', { fg = palette.color_base_20, bg = palette.leather_color })
hl('FloatBorder', { fg = palette.color_base_10, bg = palette.leather_color_alt })

-- statusline
hl('StatusLine', { fg = palette.color_base_20, bg = palette.leather_color })
hl('StatusLineNC', { fg = palette.color_base_10, bg = palette.leather_color_alt })

-- ===Lazy===
hl('CurSearch', { fg = palette.color_base_20, bg = palette.leather_color_alt })
hl('LazyButtonActive', { fg = palette.color_base_20, bg = palette.leather_color_alt })
hl('LazyButton', { fg = palette.color_base_10 })
hl('LazyReasonPlugin', { fg = palette.color_base_05 })
hl('LazySpecial', { fg = palette.color_base_05 })
hl('LazyCommit', { fg = palette.color_base_05 })
hl('@markup.raw.markdown_inline', { fg = palette.color_base_05 })
hl('LazyComment', { fg = palette.color_base_00 })
hl('LazyDimmed', { fg = palette.color_base_00 })
hl('LazyReasonImport', { fg = palette.color_base_00 })
hl('LazyProp', { fg = palette.color_base_00 })

-- ===NeoTree===
hl('Directory', { fg = palette.bold_accent_ink })
hl('Changed', { fg = palette.secondary_ink })
hl('NeoTreeMessage', { fg = palette.color_base_30 })

-- ===Markview===
