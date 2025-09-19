-- Transparencia global para cualquier colorscheme (kitty, etc.)
vim.opt.termguicolors = true

local groups = {
  "Normal","NormalNC","NormalFloat","FloatBorder",
  "SignColumn","EndOfBuffer",
  "LineNr","CursorLine","CursorLineNr",
  "Folded","FoldColumn",
  "StatusLine","StatusLineNC","TabLine","TabLineFill",
  "Pmenu","PmenuSel","PmenuSbar","PmenuThumb",
  "TelescopeNormal","TelescopeBorder",
  "WhichKeyFloat",
  "NeoTreeNormal","NeoTreeNormalNC",  -- usas neo-tree, no nvim-tree
  -- Grupos de IBL (por si ya existen al cargar el tema)
  "IblIndent","IblWhitespace",
}

local function apply_transparent()
  for _, g in ipairs(groups) do
    pcall(vim.api.nvim_set_hl, 0, g, { bg = "none" })
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("TransparentBG", { clear = true }),
  callback = function()
    apply_transparent()
    -- Si IBL aún no definió 'IblScope', no pasa nada; IBL.lua lo define.
  end,
})

-- Por si el colorscheme ya estaba activo al iniciar
apply_transparent()

-- (Opcional) leves transparencias en flotantes/menú
vim.o.winblend = 0  -- 0..100
vim.o.pumblend = 0
