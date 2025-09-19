return {
	{
	  "williamboman/mason.nvim",
	  cmd = "Mason",
	  config = function()
		require("mason").setup()
	  end,
	},
	{
	  "williamboman/mason-lspconfig.nvim",
	  event = { "BufReadPre", "BufNewFile" },
	  opts = {
		ensure_installed = { "bashls", "lua_ls", "cssls", "html", "ts_ls", "pyright", "intelephense" },
		auto_install = true,
	  },
	},
	{
	  "neovim/nvim-lspconfig",
	  event = { "BufReadPre", "BufNewFile" },
	  config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
  
		local lspconfig = require("lspconfig")
		local servers = { "bashls", "cssls", "lua_ls", "intelephense", "pyright", "ts_ls", "html" }
  
		for _, server in ipairs(servers) do
		  lspconfig[server].setup({
			capabilities = capabilities,
		  })
		end
  
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Declaration" })
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definitions" })
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
		vim.keymap.set("n", "<leader>lf", function()
		  vim.lsp.buf.format({ async = true })
		end, { desc = "LSP format" })
	  end,
	},
  
	{
	  "nvimtools/none-ls.nvim",   -- antes: "jose-elias-alvarez/null-ls.nvim"
	  dependencies = { "nvim-lua/plenary.nvim" },
	  config = function()
		local null_ls = require("null-ls") -- el módulo sigue llamándose "null-ls"
  
		null_ls.setup({
		  sources = {
			null_ls.builtins.formatting.prettier,     -- JS, TS, HTML, CSS, MD
			null_ls.builtins.formatting.stylua,       -- Lua
			null_ls.builtins.formatting.black,        -- Python
			null_ls.builtins.formatting.clang_format, -- C, C++
		  },
		})
	  end,
	},
  
	{
	  "jay-babu/mason-null-ls.nvim",
	  event = { "BufReadPre", "BufNewFile" },
	  dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim", -- antes: "jose-elias-alvarez/null-ls.nvim"
	  },
	  config = function()
		require("mason-null-ls").setup({
		  ensure_installed = { "prettier", "stylua", "black", "clang-format" },
		  automatic_installation = true,
		})
	  end,
	},
  }
  
