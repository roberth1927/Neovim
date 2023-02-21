local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- leader key
vim.g.mapleader = " "

--nvim-tree explorador de archivos
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>e", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>R", ":NvimTreeResize +5<CR>", opts)
map("n", "<leader>r", ":NvimTreeResize -5<CR>", opts)
map("n", "<leader>rf", ":NvimTreeRefresh<CR>", opts)


-- save and out
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)


-- sessions

map("n", "<leader>ss", ":SaveSession<CR>", opts)
map("n", "<leader>rs", ":RestoreSession<CR>", opts)
map("n", "<leader>as", ":Autosession search<CR>", opts)




--mapping barbar - buffer
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ':BufferMoveNext<CR>', opts)
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
map('n', '<A-c>', ':BufferClose<CR>', opts)
map('n', '<C-p>', ':BufferPick<CR>', opts)
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)


--Telescope - buscador
map('n', '<leader>f', ':Telescope find_files<CR>', opts)
map('n', '<leader>g', ':Telescope live_grep<CR>', opts)
map('n', '<leader>b', ':Telescope buffers<CR>', opts)
map('n', '<leader>o', ':Telescope oldfiles<CR>', opts)

--dividir pestanias
map("n", "<leader>v", ":vsplit<CR>", opts)
map("n", "<leader>>", ":vertical resize +5<CR>", opts)
map("n", "<leader><", ":vertical resize -5<CR>", opts)

map('n', '<leader>rt', ':botright vertical terminal<CR>',opts)
--map('nt', '<Esc>', '<C-\><C-n>',opts)

--quitar seleccionados despues de buscar
map('n',"<F3>", ':nohlsearch<CR>',opts)

-- mapeo para buscar y reemplazar una palabra con confirmación
map("n", "<leader>l", ":%s/\\V<c-r><c-w>//gc<CR>", opts)


--busca la plabra donde esta el cursor en todo el doc
map("n", "<leader>/", ":let @/=expand('<cword>')<CR>:set hls<CR>", opts)

--plegar funcines POR REVISAR
--map("n", "<leader>zo", ":set foldlevel=20<CR>", opts)
--map("n", "<leader>zc", ":set foldlevel=0<CR>", opts)
