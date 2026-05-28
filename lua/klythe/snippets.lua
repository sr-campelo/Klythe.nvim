local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets('markdown', {
  s('nnn', {
    t('# '),
    i(1),
    t({ '', '' }),
    i(2),
    t({ '', '', '## Ver tamén:' }),
    t({ '', '' }),
    i(3),
    t({ '', '', '## Bibliografía' }),
    t({ '', '' }),
    i(4),
  }),
},
{
  key = 'markdown-templates'
})
