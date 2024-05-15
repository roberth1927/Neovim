return {
	-- {
	-- 	"Shatur/neovim-ayu",
	-- 	init = function(_)
	-- 		vim.cmd([[colorscheme ayu]])
	-- 	end,
	-- 	opts = {
	-- 		mirage = false,
	-- 		dark = true,
	-- 		overrides = {},
	-- 	},
	-- 	priority = 1000,
	-- 	config = function(opts, _)
	-- 		require("ayu").setup({
	-- 			style = "ayu-dark",
	-- 		})
	-- 		require("ayu").load()
	-- 	end,
	-- },

	{
		"Shatur/neovim-ayu",
		mirage = true,
		init = function(_)
			vim.cmd([[colorscheme ayu-mirage]])
		end,
		lazy = false,
		priority = 1000,
		config = function()
			require("ayu").setup({
				mirage = false,
				style = "ayu-mirage",
			})
			-- require('ayu-mirage').load()
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local tokyonight = require("tokyonight")
			tokyonight.setup({ style = "night" })
			-- tokyonight.load()
		end,
	},
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function(_, opts)
			require("onedark").setup({
				style = "darker",
			})
		--	require('onedark').load()
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function(_, opts)
			require("gruvbox").setup({
				style = "dark",
			})
		 require("gruvbox").load()
		end,
	},

}
