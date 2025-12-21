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
hl('Visual', { fg = palette.color_base_20, bg = palette.leather_color })
hl('LineNr', { fg = palette.leather_color_alt, bg = palette.color_base_00 })
hl('CursorLine', { bg = palette.color_base_10 })
hl('CursorLineNr', { fg = palette.leather_color, bg = palette.color_base_00, bold = true })

-- coments and syntax
hl('Comment', { fg = palette.secondary_ink, italic = true })
hl('String', { fg = palette.italic_accent_ink })
hl('Keyword', { fg = palette.bold_accent_ink, bold = true })
hl('function', { fg = palette.italic_accent_ink, bold = true, italic = true })
hl('MatchParen', { fg = palette.color_base_20, bg = palette.leather_color, bold = true })
hl('Constant', { fg = palette.secondary_ink, bold = true })

-- float windows
hl('NormalFloat', { fg = palette.main_ink, bg = palette.color_base_20 })
hl('FloatBorder', { fg = palette.secondary_ink, bg = palette.color_base_20 })

-- statusline
hl('StatusLine', { fg = palette.color_base_20, bg = palette.leather_color })
hl('StatusLineNC', { fg = palette.color_base_10, bg = palette.leather_color_alt })

-- ===Lazy===
hl('CurSearch', { fg = palette.color_base_20, bg = palette.leather_color_alt })
hl('LazyButtonActive', { fg = palette.color_base_20, bg = palette.leather_color_alt })
hl('LazyButton', { fg = palette.main_ink})
hl('LazyReasonPlugin', { fg = palette.italic_accent_ink })
hl('LazySpecial', { fg = palette.italic_accent_ink })
hl('LazyCommit', { fg = palette.italic_accent_ink })
hl('@markup.raw.markdown_inline', { fg = palette.italic_accent_ink })
hl('LazyComment', { fg = palette.secondary_ink })
hl('LazyDimmed', { fg = palette.secondary_ink })
hl('LazyReasonImport', { fg = palette.secondary_ink })
hl('LazyProp', { fg = palette.secondary_ink })

-- ===NeoTree===
hl('Directory', { fg = palette.bold_accent_ink })
hl('Changed', { fg = palette.secondary_ink })
hl('NeoTreeMessage', { fg = palette.color_base_30 })
hl('NeoTreeRootName', { fg = palette.leather_color, bold = true })
hl('NeoTreeDirectoryIcon', { fg = palette.leather_color })

-- ===Markview===
hl('@markup.italic', { fg = palette.italic_accent_ink, italic = true })
hl('@markup.strong', { fg = palette.bold_accent_ink, bold = true })
hl('@markup.heading.1.markdown', { fg = palette.leather_color, bold = true })
hl('@markup.heading.2.markdown', { fg = palette.leather_color, bold = true })
hl('@markup.heading.3.markdown', { fg = palette.leather_color, bold = true })
hl('@markup.heading.4.markdown', { fg = palette.leather_color, bold = true })
hl('@markup.heading.5.markdown', { fg = palette.leather_color, bold = true })
hl('@markup.heading.6.markdown', { fg = palette.leather_color, bold = true })
hl('MarkviewInlineCode', { fg = palette.secondary_ink, bg= palette.color_base_10 })
hl('@punctuation.special.markdown', { fg = palette.secondary_ink })

-- ===Zen===
hl('ZenBg', { bg = palette.leather_color })
