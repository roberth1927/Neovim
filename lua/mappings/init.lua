local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- sessions

map("n", "<leader>ss", ":SaveSession<CR>", opts)
map("n", "<leader>rs", ":RestoreSession<CR>", opts)
map("n", "<leader>as", ":Autosession search<CR>", opts)

