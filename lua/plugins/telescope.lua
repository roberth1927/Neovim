return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		lazy = true,
	},
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			telescope.load_extension("ui-select")
			telescope.load_extension("session-lens") -- Cargar extensión de sesiones
		end,
	},
	{
		"rmagatti/auto-session", -- Plugin para manejo automático de sesiones
		config = function()
			require("auto-session").setup({
				auto_restore_enabled = false, -- No restaurar automáticamente al abrir Neovim
				auto_session_suppress_dirs = { "~/", "/" }, -- Evita guardar sesiones en ciertos directorios
			})
		end,
	},
	{
		"rmagatti/session-lens", -- Integración de sesiones con Telescope
		dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
		config = function()
			require("session-lens").setup({})
		end,
	},
}

