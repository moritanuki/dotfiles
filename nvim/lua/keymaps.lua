-- keymap
g.mapleader = " "
key.set('n', '<Leader><Leader>', '<cmd>source  ~/.config/nvim/init.lua<cr> <cmd>lua print("Reloaded init.lua")<cr>')

-- Split window
key.set('n', 'ss', ':split<CR>eturn><C-w>w')
key.set('n', 'sv', ':vsplit<CR>eturn><C-w>w')

-- Move window
key.set('n','<C-w>', '<C-w>w')
key.set('', 'sh', '<C-w>h')
key.set('', 'sk', '<C-w>k')
key.set('', 'sj', '<C-w>j')
key.set('', 'sl', '<C-w>l')

-- fern
key.set('n', '<C-e>', ':Fern . -reveal=% -drawer -toggle -width=33<CR>')

-- telescope
key.set('n', '<C-p>', '<cmd>Telescope find_files<CR>')
key.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>')
key.set('n', 'go', '<cmd>Telescope oldfiles theme=get_dropdown hidden=true<CR>')
key.set('n', 'gt', '<cmd>Telescope buffers theme=get_dropdown hidden=true<CR>')
key.set('n', 'gb', '<cmd>Telescope git_branches theme=get_dropdown hidden=true<CR>')

-- easyAlign
key.set('x', 'ga', '<Plug>(EasyAlign)')

-- lazyGit
key.set('n', 'gl', ':LazyGit<CR>')
