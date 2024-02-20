return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    branch = "master",
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
      { "folke/neodev.nvim", config = true },
      -- { "j-hui/fidget.nvim", config = true },
      { "smjonas/inc-rename.nvim", config = true },
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = { callSnippet = "Replace" },
              telemetry = { enable = false },
              hint = {
                enable = false,
              },
            },
          },
        },
        dockerls = {},
      },
      setup = {},
    },
    config = function(plugin, opts)
      require("robin.plugins.lsp.servers").setup(plugin, opts)
    end,
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    opts = {
      ensure_installed = {
        "stylua",
        "ruff",
        "lua-language-server",
      },
    },
    config = function(_, opts)
      require("mason").setup()
      local mr = require("mason-registry")
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    config = function()
      local nls = require("null-ls")
      nls.setup({
        sources = {
          --here add new sources
          nls.builtins.formatting.phpcbf.with({ extra_args = { "--standard=PSR12" }}),
          nls.builtins.formatting.eslint,
          nls.builtins.formatting.prettier,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.stylua,
          nls.builtins.diagnostics.eslint.with({ method = nls.methods.DIAGNOSTICS_ON_SAVE }),
          nls.builtins.diagnostics.ruff.with({ extra_args = { "--max-line-length=180", method = nls.methods.DIAGNOSTICS_ON_SAVE } }),
          nls.builtins.diagnostics.phpcs.with({ extra_args = { "--standard=PSR12", method = nls.methods.DIAGNOSTICS_ON_SAVE }}),
        },
      })
    end,
  },
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
    },
    config = true,
  },
}
