-- number display
vim.wo.number = true
-- special character display
vim.opt.list = true
vim.opt.listchars = {tab='>-', trail='*', nbsp='+'}
-- spell check
vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.opt.spellsuggest=best,9
-- parentheses linkage
vim.opt.showmatch = true
vim.opt.matchtime = 1
-- help in japanese
vim.opt.helplang = 'ja'
-- tab
vim.opt.showtabline = 2
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- search
-- ignore case
vim.opt.ignorecase = true
-- determine upper case
vim.opt.smartcase = true
-- back to top
vim.opt.wrapscan = true
