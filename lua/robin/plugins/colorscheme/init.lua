return {
  {
    "Shatur/neovim-ayu",
    init = function(_)
      vim.cmd[[colorscheme ayu]]
    end,
    opts = {
      mirage = false,
      dark = true,
      overrides = {}
    },
    priority = 1000,
    config = function(opts,_)
      require("ayu").setup(opts)
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local tokyonight = require "tokyonight"
      tokyonight.setup { style = "night" }
      -- tokyonight.load()
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    init = function()
      --vim.cmd[[colorscheme catppuccin]]
    end,
  },
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function(_,opts)
      require('onedark').setup{
        style = 'darker'
      }
      require('onedark').load()
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function(_,opts)
      require('gruvbox').setup{
        style = 'dark'
      }
   require('gruvbox').load()
    end,
  },
}
