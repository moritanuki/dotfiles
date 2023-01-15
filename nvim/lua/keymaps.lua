-- alias
g   = vim.g
o   = vim.o
opt = vim.opt
cmd = vim.cmd
fn  = vim.fn
api = vim.api
key = vim.keymap

-- keymap
g.mapleader = " "

-- fern
key.set('n', '<C-e>', ':Fern . -reveal=% -drawer -toggle -width=33<CR>')

-- telescope
key.set('n', '<C-p>', '<cmd>Telescope find_files<CR>')
key.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>')

-- lazyGit
key.set('n', 'gl', ':LazyGit<CR>')
