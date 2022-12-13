local set = vim.opt

vim.notify = require("notify")

vim.api.nvim_exec([[ autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE ]], false)

set.expandtab = true
set.softtabstop = 4
set.smarttab = true
set.scrolloff = 10
set.shiftwidth = 4
set.tabstop = 4
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.shiftwidth = 4
set.scrolloff = 8
set.splitright = true
set.splitbelow = true
set.wrap = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.smartindent = true
set.swapfile = false
set.hidden = true
set.termguicolors = true
set.relativenumber =true
set.cursorline =   true
set.smartindent = true
--set.colorcolumn = '80'
--set.shortmess:append {c = true}
--set.mouse = 'a'
set.clipboard = 'unnamedplus'
--set.history = 100
--set.synmaxcol = 240


