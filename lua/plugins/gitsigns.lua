return {
   "lewis6991/gitsigns.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup({
      -- Configuración de Git Blame en línea
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 200,
        virt_text = true,
        virt_text_pos = "eol",
      },
    })

    -- Atajo para ver archivos modificados con telescope
    vim.keymap.set("n", "<leader>gdl", function()
      require("telescope.builtin").git_status()
    end, { desc = "Mostrar archivos modificados en Git" })

    -- Atajo para ver cambios en el archivo actual
    vim.keymap.set("n", "<leader>gdc", function()
      gitsigns.diffthis()
    end, { desc = "Ver diferencias del archivo actual" })
  end,
  }
