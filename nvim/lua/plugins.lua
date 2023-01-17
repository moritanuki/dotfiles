-- packer自動clone
cmd.packadd 'packer.nvim'
-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end
--
-- local packer_bootstrap = ensure_packer()
--
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

-----------------
-- plugins
-----------------
return require("packer").startup(function(use)
  -- parcker
  use "wbthomason/packer.nvim"
  -- file tree
  use "lambdalisue/fern.vim"
  use "lambdalisue/fern-git-status.vim"
  -- comment out
  use "terrortylor/nvim-comment"
  -- git
  use 'kdheepak/lazygit.nvim'
  -- language server
  use { "neoclide/coc.nvim", branch = "release" }
  -- git diff
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
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
  require("bufferline").setup{}
  -- color scheme
  use {
    "phha/zenburn.nvim",
    config = function() require("zenburn").setup() end
  }
  -- todo comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
  require('nvim_comment').setup()
  -- mode colors
  use({
    "mvllow/modes.nvim",
    tag = "v0.2.0",
    config = function()
      require("modes").setup()
    end
  })
  require("modes").setup({
    colors = {
      copy = "#f5c359",
      delete = "#c75c6a",
      insert = "#78ccc5",
      visual = "#9745be",
    },

    -- Set opacity for cursorline and number background
    line_opacity = 0.15,

    -- Enable cursor highlights
    set_cursor = true,

    -- Enable cursorline initially, and disable cursorline for inactive windows
    -- or ignored filetypes
    set_cursorline = true,

    -- Enable line number highlights to match cursorline
    set_number = true,

    -- Disable modes highlights in specified filetypes
    -- Please PR commonly ignored filetypes
    ignore_filetypes = { "NvimTree", "TelescopePrompt" }
  })
  -- noice
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })
  -- noice setting
  require("noice").setup({
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  })
  -- telescope
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
