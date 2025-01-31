return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- session options
  },
  config = function()
    require("persistence").setup()
  end,
}
