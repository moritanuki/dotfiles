vim.cmd [[packadd packer.nvim]]

-- FIXME: can not read
require('packer').startup(function()    
  use{ 'wbthomason/packer.nvim', opt = true}
  use { "EdenEast/nightfox.nvim", opt = true, run = ":NightfoxCompile" }
end)

vim.cmd("colorscheme nightfox")

print('plugins.lua')