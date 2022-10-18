-- packer自動clone
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-----------------
-- plugins
-----------------
return require('packer').startup(function(use)
  -- parcker
  use { 'wbthomason/packer.nvim' }
  -- status line
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons' }
	}
  -- file tree
  use { "lambdalisue/fern.vim" }
  -- color scheme
  use { "EdenEast/nightfox.nvim", run = ":NightfoxCompile" }
  -- language server
  use { 'neoclide/coc.nvim', branch = 'release' }
end)
