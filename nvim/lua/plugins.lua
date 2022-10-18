-- packer自動clone
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
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
return require("packer").startup(function(use)
  -- parcker
  use "wbthomason/packer.nvim"
  -- status line
  use {
	  "nvim-lualine/lualine.nvim",
	  requires = { "kyazdani42/nvim-web-devicons" }
	}
  -- buffer line
  use {
    "akinsho/bufferline.nvim", tag = "v3.*",
    requires = "kyazdani42/nvim-web-devicons"
  }
  -- file tree
  use "lambdalisue/fern.vim"
  use "lambdalisue/fern-git-status.vim"
  -- color scheme
  use { "EdenEast/nightfox.nvim", run = ":NightfoxCompile" }
  -- language server
  use { "neoclide/coc.nvim", branch = "release" }
  -- comment out
  use "terrortylor/nvim-comment"
  -- todo comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
  -- mode colors
  use({
    "mvllow/modes.nvim",
    tag = "v0.2.0",
    config = function()
      require("modes").setup()
    end
  })
  -- fuzzy finder
  use {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "kyazdani42/nvim-web-devicons" }
  }
end)
