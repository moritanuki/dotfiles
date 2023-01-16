-- keymap
g.mapleader = " "
key.set('n', '<Leader><Leader>', '<cmd>source  ~/.config/nvim/init.lua<cr> <cmd>lua print("Reloaded init.lua")<cr>')

-- fern
key.set('n', '<C-e>', ':Fern . -reveal=% -drawer -toggle -width=33<CR>')

-- telescope
key.set('n', '<C-p>', '<cmd>Telescope find_files<CR>')
key.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>')

-- lazyGit
key.set('n', 'gl', ':LazyGit<CR>')
