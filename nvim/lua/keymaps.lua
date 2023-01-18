-- keymap
g.mapleader = " "
key.set('n', '<Leader><Leader>', '<cmd>source  ~/.config/nvim/init.lua<cr> <cmd>lua print("Reloaded init.lua")<cr>')

-- fern
key.set('n', '<C-e>', ':Fern . -reveal=% -drawer -toggle -width=33<CR>')

-- telescope
key.set('n', '<C-p>', '<cmd>Telescope find_files<CR>')
-- key.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>')
key.set('n', 'go', '<cmd>Telescope oldfiles theme=get_dropdown hidden=true<CR>')
key.set('n', 'gt', '<cmd>Telescope buffers theme=get_dropdown hidden=true<CR>')
key.set('n', 'gb', '<cmd>Telescope git_branches theme=get_dropdown hidden=true<CR>')

-- easyAlign
key.set('x', 'ga', '<Plug>(EasyAlign)')

-- lazyGit
key.set('n', 'gl', ':LazyGit<CR>')
