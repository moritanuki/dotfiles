-- number display
opt.number = true
-- special character display
opt.list = true
opt.listchars = {tab='>-', trail='*', nbsp='+'}
-- spell check
opt.spell = true
opt.spelllang = 'en'
opt.spellsuggest=best,9
-- parentheses linkage
opt.showmatch = true
opt.matchtime = 1
-- help in japanese
opt.helplang = 'ja'
-- tab
opt.showtabline = 2
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
-- search
-- ignore case
opt.ignorecase = true
-- determine upper case
opt.smartcase = true
-- back to top
opt.wrapscan = true
-- clipboad
opt.clipboard:append({ fn.has('mac') == 4 and 'unnamed' or 'unnamedplus' })
