return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
	  -- Asegura que el grupo exista (toma el color de 'Comment' para el scope)
	  pcall(vim.api.nvim_set_hl, 0, "IblScope", { link = "Comment" })
  
	  -- Si quieres puedes hacer transparentes los grupos de IBL también:
	  pcall(vim.api.nvim_set_hl, 0, "IblIndent",     { bg = "none" })
	  pcall(vim.api.nvim_set_hl, 0, "IblWhitespace", { bg = "none" })
  
	  require("ibl").setup({
		-- Puedes dejarlo vacío o ajustar opciones aquí
		-- scope = { enabled = true }, -- (por defecto on)
	  })
	end,
  }
  