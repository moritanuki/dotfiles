opt.number      = true -- number display
opt.spell       = true -- spell check
opt.spelllang   = 'en'
opt.spellsuggest='best,9'
opt.showmatch   = true -- parentheses linkage
opt.matchtime   = 1
opt.helplang    = 'ja' -- help in japanese
opt.showtabline = 2    -- tab
opt.expandtab   = true
opt.tabstop     = 2
opt.shiftwidth  = 2
opt.ignorecase  = true -- search ignore case
opt.smartcase   = true -- determine upper case
opt.wrapscan    = true -- back to top

-- clipboad
opt.clipboard:append({ fn.has('mac') == 4 and 'unnamed' or 'unnamedplus' })
-- special character display
opt.list = true opt.listchars = {tab='>-', trail='*', nbsp='+'}
