local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- leader key
vim.g.mapleader = " "

--nvim-tree explorador de archivos
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>e", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>R", ":NvimTreeResize +5<CR>", opts)
map("n", "<leader>r", ":NvimTreeResize -5<CR>", opts)

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



map('n', '<leader>rt', ':botright vertical terminal<CR>',opts)
--map('nt', '<Esc>', '<C-\><C-n>',opts)
