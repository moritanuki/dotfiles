require("base")
require("plugins")

vim.cmd[[autocmd BufWritePost plugins.lua PackerInstall]]
vim.cmd("colorscheme nightfox")