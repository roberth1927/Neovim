return {
  "akinsho/nvim-bufferline.lua",
  event = "VeryLazy",
  keys = {
    { "<A-,>", "<Cmd>BufferLineCyclePrev<CR>" },
    { "<A-.>", "<Cmd>BufferLineCycleNext<CR>" },
    { "<A->>", "<Cmd>BufferLineMoveNext<CR>" },
    { "<A-<>", "<Cmd>BufferLineMovePrev<CR>" },
    { "<A-c>", "<Cmd>bdelete<CR>" },
    --{ "<leader>p", "<Cmd>BufferLineTogglePin<CR>" },
   -- { "<leader>pk", "<Cmd>BufferLinePick<CR>" },
  },
  opts = {
    options = {
      mode = "buffers", -- tabs or buffers
      diagnostics = "nvim_lsp",
      max_name_length = 14,
      max_prefix_length = 14,
      tab_size = 18,
      numbers = "buffer_id",
      indicator = { icon = " ", style = "icon" },
      offsets = {
        {
          filetype = "aerial",
          text = "OUTLINE EXPLORER",
          highlight = "Title",
          separator = false,
        },
      },
      always_show_bufferline = true,
      color_icons = true,
      enforce_regular_tabs = false,
      show_buffer_icons = true, -- disable filetype icons for buffers
      show_buffer_close_icons = false,
      --show_buffer_default_icon = false, -- whether or not an unrecognised filetype should show a default icon

      get_icon = function(_, _, buf)
          return require("nvim-web-devicons").get_icon(buf.name, buf.extension, { default = false })
        end,
      show_close_icon = false,
      show_tab_indicators = false,
      show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
      separator_style = { "", "" },

    },
    highlights = {
      buffer_selected = {
        bg = "#73D0FF",
        fg = "#000000",
        bold = true,
      },
      separator = {
        fg = "#73D0FF",
      },
      modified_selected = {
        fg = "#F07800",
        bg = "#73D0FF",
        bold = true,
      },
      numbers_selected = {
        fg = "#000000",
        bg = "#73D0FF",
        bold = true,
      },
      warning_selected = {
          fg = "#aaff00",
          bg = "#1FF0FF",
          --sp = "#F07800",
          bold = true,
          italic = true,
      },
      error_selected = {
          fg = "#ff0000",
          bg = "#73D0FF",
          --sp = '#ff0000',
          bold = true,
          italic = true,
      },
      hint_selected = {
          fg = "#002fa0",
          bg = "#73D0FF",
          --sp = '#002fa0',
          bold = true,
          italic = true,
      },
    },
  },
}
