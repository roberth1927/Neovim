return {
    "nvim-lualine/lualine.nvim",
    event = "BufRead",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      extensions = { "quickfix", "fugitive" },
      sections = {
        lualine_a = { { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = { { "filename", file_status = true, path = 1 } },
        lualine_x = {
            "diagnostics", "diff",
            {
                require("lazy.status").updates,
                cond = require("lazy.status").has_updates,
                color = { fg = "ff9e64" },
            }
        },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
    },
  }
  