local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- leader key
vim.g.mapleader = " "



-- save and out
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

--dividir pestanias
map("n", "<leader>v", ":vsplit<CR>", opts)
map("n", "<leader>h", ":split<CR>", opts)
map("n", "<leader>>", ":vertical resize +5<CR>", opts)
map("n", "<leader><", ":vertical resize -5<CR>", opts)
map('n', '<leader>rt', ':botright vertical terminal<CR>',opts)
map('t', '<Esc>', '<C-\\><C-n>', {})
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)

--quitar seleccionados despues de buscar
map('n',"<F3>", ':nohlsearch<CR>',opts)


-- mapeo para buscar y reemplazar una palabra con confirmación
map("n", "<leader>l", ":%s/\\V<c-r><c-w>//gc<CR>", opts)


--busca la plabra donde esta el cursor en todo el doc
map("n", "<leader>/", ":let @/=expand('<cword>')<CR>:set hls<CR>", opts)

--plegar funcines POR REVISAR
--map("n", "<leader>zo", ":set foldlevel=20<CR>", opts)
--map("n", "<leader>zc", ":set foldlevel=0<CR>", opts)
