# 🧠 Comandos & Atajos — Neovim de Robin

> Documento maestro con **todos** los atajos y qué hace cada plugin en tu setup.  
> `<leader>` = **Space** (según `vim.g.mapleader = " "`).  
> Modos: `n`=normal, `i`=insert, `v`=visual, `x`=visual select.

---

## 📚 Índice

- [1) Comandos nativos de Vim](#1-comandos-nativos-de-vim)
  - [Movimiento](#movimiento)
  - [Insertar texto](#insertar-texto)
  - [Eliminar / cambiar / copiar](#eliminar--cambiar--copiar)
  - [Guardar / salir](#guardar--salir)
  - [Navegación, saltos y línea](#navegación-saltos-y-línea)
  - [Deshacer / rehacer](#deshacer--rehacer)
  - [Copiar / cortar / pegar](#copiar--cortar--pegar)
  - [Visual mode](#visual-mode)
  - [Búsqueda y navegación](#búsqueda-y-navegación)
  - [Sustitución (buscar y reemplazar)](#sustitución-buscar-y-reemplazar)
- [2) Atajos globales (`lua/keymaps.lua`)](#2-atajos-globales-luakeymapslua)
  - [Guardar / salir](#guardar--salir-1)
  - [Mover líneas](#mover-líneas)
  - [Salir de Insert con “jk”](#salir-de-insert-con-jk)
  - [Incremento / decremento numérico](#incremento--decremento-numérico)
  - [Seleccionar todo](#seleccionar-todo)
  - [Indentación en visual](#indentación-en-visual)
  - [Tabs / splits / navegación de ventanas](#tabs--splits--navegación-de-ventanas)
  - [Cambiar layout de splits](#cambiar-layout-de-splits)
  - [Redimensionar ventanas](#redimensionar-ventanas)
- [3) Plugins](#3-plugins)
  - [Alpha (dashboard)](#alpha-dashboard)
  - [Autopairs](#autopairs)
  - [Comment.nvim](#commentnvim)
  - [Completions (nvim-cmp + LuaSnip)](#completions-nvim-cmp--luasnip)
  - [Conform (formatters)](#conform-formatters)
  - [Git: Gitsigns + Fugitive](#git-gitsigns--fugitive)
  - [Highlight Colors](#highlight-colors)
  - [Indent-Blankline (IBL)](#indent-blankline-ibl)
  - [LSP (mason, lspconfig, null-ls/mason-null-ls)](#lsp-mason-lspconfig-null-lsmason-null-ls)
  - [Lualine](#lualine)
  - [Menu (nvzone/menu)](#menu-nvzonemenu)
  - [Neo-tree](#neo-tree)
  - [Barbar (buffers)](#barbar-buffers)
  - [Spectre](#spectre)
  - [Telescope + sesiones](#telescope--sesiones)
  - [Treesitter](#treesitter)
  - [Which-key](#which-key)
- [4) Solapes / Conflictos detectados](#4-solapes--conflictos-detectados)

---

## 1) Comandos nativos de Vim

### Movimiento
- `h` izquierda · `l` derecha · `k` arriba · `j` abajo  
- `w` avanzar al **inicio** de la siguiente palabra  
- `b` retroceder al **inicio** de la palabra previa  
- `e` avanzar al **final** de la palabra

### Insertar texto
- `i` insertar **antes** del cursor · `a` insertar **después**  
- `I` inicio de línea · `A` final de línea  
- `o` nueva línea **debajo** · `O` nueva línea **encima**  
- `R` modo **replace** · `Esc` salir de insert

### Eliminar / cambiar / copiar
- `x` borrar carácter bajo el cursor  
- `dw` borrar hasta el inicio de la siguiente palabra  
- `D` o `d$` borrar hasta el final de línea  
- `d{n}w` borrar *n* palabras  
- `cw` cambiar (borrar+insert) hasta la siguiente palabra  
- `ciw` cambiar **palabra completa**  
- `yiw` **copiar** palabra completa

### Guardar / salir
- `:w` guardar · `:wq` guardar y salir  
- `:q` salir · `:q!` forzar salida

### Navegación, saltos y línea
- `gd` ir a **definición** (si LSP/tags) · `gf` abrir archivo bajo cursor  
- `Ctrl+o` atrás en historial de saltos · `Ctrl+i` adelante  
- `%` saltar entre par de paréntesis/llaves/corchetes  
- `0` inicio de línea · `$` final de línea

### Deshacer / rehacer
- `u` deshacer · `Ctrl+r` rehacer

### Copiar / cortar / pegar
- `yy` copiar línea · `dd` cortar línea  
- `p` pegar **debajo** · `P` pegar **encima**

### Visual mode
- `v` entrar al modo visual → mover, luego `y` (copiar), `d` (cortar), `p` (pegar)

### Búsqueda y navegación
- `/texto` buscar **adelante** · `?texto` buscar **atrás**  
- `n` siguiente coincidencia · `N` anterior  
- `gg` inicio de archivo · `G` fin · `{n}G` ir a línea *n*

### Sustitución (buscar y reemplazar)
- `:%s/patrón/reemplazo/` (primera por línea)  
- `:%s/patrón/reemplazo/g` (**todas** las coincidencias)  
- `:help :s` (ayuda detallada)

---

## 2) Atajos globales (`lua/keymaps.lua`)

### Guardar / salir
| Modo | Tecla        | Acción            |
|------|--------------|-------------------|
| n    | `<leader>w`  | `:w`              |
| n    | `<leader>q`  | `:q`              |

### Mover líneas
| Modo | Tecla | Acción                                  |
|------|------|------------------------------------------|
| v    | `J`  | Mover selección **abajo** + reindentar   |
| v    | `K`  | Mover selección **arriba** + reindentar  |

### Salir de Insert con “jk”
| Modo | Tecla | Acción |
|------|-------|--------|
| i    | `jk`  | `Esc`  |

### Incremento / decremento numérico
| Modo | Tecla | Acción        |
|------|-------|---------------|
| n    | `+`   | `<C-a>` (+1)  |
| n    | `-`   | `<C-x>` (-1)  |

### Seleccionar todo
| Modo | Tecla      | Acción       |
|------|------------|--------------|
| n    | `Ctrl+a`   | `gg<S-v>G`   |

### Indentación en visual
| Modo | Tecla | Acción                    |
|------|-------|---------------------------|
| v    | `<`   | Indentar a la izquierda  |
| v    | `>`   | Indentar a la derecha    |

### Tabs / splits / navegación de ventanas
| Modo | Tecla          | Acción                                   |
|------|----------------|------------------------------------------|
| n    | `te`           | `:tabedit`                               |
| n    | `<leader>sh`   | `:split` + foco                           |
| n    | `<leader>sv`   | `:vsplit` + foco                          |
| n    | `Ctrl+h/j/k/l` | Mover foco entre ventanas                 |

### Cambiar layout de splits
| Modo | Tecla        | Acción                                      |
|------|--------------|---------------------------------------------|
| n    | `<leader>th` | Cambiar a **horizontal** (stacked)          |
| n    | `<leader>tk` | Cambiar a **vertical** (side-by-side)       |

### Redimensionar ventanas
| Modo | Tecla        | Acción                    |
|------|--------------|---------------------------|
| n    | `Ctrl+Up`    | `:resize -3`              |
| n    | `Ctrl+Down`  | `:resize +3`              |
| n    | `Ctrl+Left`  | `:vertical resize -3`     |
| n    | `Ctrl+Right` | `:vertical resize +3`     |

---

## 3) Plugins

### Alpha (dashboard)
**Uso:** Pantalla inicial con botones. abre Neovim sin cargar un archivo específico 
**Atajos dentro del dashboard:**
| Tecla | Acción                    |
|------|---------------------------|
| `e`  | Nuevo archivo             |
| `r`  | Archivos recientes        |
| `f`  | Buscar archivo (Telescope)|
| `g`  | Grep (Telescope)          |
| `q`  | Salir de Neovim           |

---

### Autopairs
**Uso:** Inserta cierres de paréntesis/llaves/comillas automáticamente al escribir.  
**Atajos:** *No define atajos; es reactivo mientras tipeas.*

---

### Comment.nvim
**Atajos:**
| Modo   | Tecla         | Acción                      |
|--------|---------------|-----------------------------|
| n / v  | `<leader>co`  | Toggle comentar/descomentar |

---

### Completions (nvim-cmp + LuaSnip)
**Atajos (insert mode):**
| Tecla       | Acción                           |
|-------------|----------------------------------|
| `Ctrl+b`    | Scroll docs arriba               |
| `Ctrl+f`    | Scroll docs abajo                |
| `Ctrl+Space`| Abrir menú de completado         |
| `Ctrl+e`    | Cerrar/Abort                     |
| `Enter`     | Confirmar selección (auto-select)|

**Notas:** Carga snippets de `friendly-snippets` vía LuaSnip.

---

### Conform (formatters)
**Atajos:**
| Modo      | Tecla        | Acción                                  |
|-----------|--------------|-----------------------------------------|
| n / v     | `<leader>gf` | Formatear archivo/rango con **Conform** |

**Motores configurados por tipo:** `stylua`, `beautysh`, `prettier`, `black`, `clang-format` (vía null-ls/mason-null-ls; ver sección LSP/formatters).

---

### Git: Gitsigns + Fugitive
**Gitsigns — Atajos:**
| Modo | Tecla        | Acción                             |
|------|--------------|------------------------------------|
| n    | `<leader>gP` | Preview hunk                       |
| n    | `<leader>gt` | Toggle blame de línea              |

**Fugitive — Atajos:**
| Modo | Tecla        | Acción        |
|------|--------------|---------------|
| n    | `<leader>gs` | `:Git` status |
| n    | `<leader>gc` | `:Git commit` |
| n    | `<leader>gp` | `:Git push`   |
| n    | `<leader>gl` | `:Git pull`   |
| n    | `<leader>gb` | `:Git blame`  |

---

### Highlight Colors
**Uso:** Resalta colores (`#RRGGBB`, `rgb()`, etc.) con **fondo**.  
**Atajos:** *No define atajos; es visual al abrir el buffer.*

---

### Indent-Blankline (IBL)
**Uso:** Muestra guías de indentación.  
**Atajos:** *No define atajos; es visual.*

---

### LSP (mason, lspconfig, null-ls/mason-null-ls)
**Lenguajes:** `bashls`, `cssls`, `lua_ls`, `intelephense`, `pyright`, `ts_ls`, `html`.  
**Formatters/tools:** `prettier`, `stylua`, `black`, `clang-format` (con **null-ls** + **mason-null-ls**).

**Atajos LSP:**
| Modo | Tecla         | Acción              |
|------|---------------|---------------------|
| n    | `K`           | Hover (doc)         |
| n    | `<leader>gD`  | Declaración         |
| n    | `<leader>gd`  | Definición          |
| n    | `<leader>gr`  | Referencias         |
| n    | `<leader>ca`  | Code Action         |
| n    | `<leader>lf`  | Formatear vía LSP   |

---

### Lualine
**Uso:** El plugin lualine.nvim (tu plugins/lualine.lua) es el que te dibuja la barra de estado en Neovim.  
**Atajos:** *No define atajos.*

---

### Menu (nvzone/menu)
**Uso:** Menú simple con items que disparan comandos Telescope (`File`, `Grep`, `Buffers`, `Help`).  
**Abrir manualmente:**  
```vim
:lua require('menu').open('main')
```

---

### Neo-tree
**Atajos:**
| Modo | Tecla         | Acción                                |
|------|---------------|----------------------------------------|
| n    | `<leader>b`   | Toggle Neo-tree                        |
| n    | `<leader>nb`  | Buffers reveal (float)                 |
| n    | `<leader>e`   | Focus en Neo-tree                      |
| n    | `<leader>o`   | Volver al buffer previo (`wincmd p`)   |
| n    | `<leader>t`   | Toggle Neo-tree y volver al buffer     |

---

### Barbar (buffers)
**Atajos:**
| Modo | Tecla        | Acción                                      |
|------|--------------|---------------------------------------------|
| n    | `<Tab>`      | `:BufferNext`                               |
| n    | `<S-Tab>`    | `:BufferPrevious`                           |
| n    | `<leader>x`  | `:BufferClose`                              |
| n    | `<leader>X`  | `:BufferCloseAllButCurrent`                 |
| n    | `<A-p>`      | `:BufferPin`                                |
| n    | `<A-.>`      | `:BufferMoveNext`                           |
| n    | `<A-,>`      | `:BufferMovePrevious`                       |
| n    | `<A-S-Tab>`  | `:BufferLast`                               |
| n    | `<leader>bl` | `:BufferCloseBuffersLeft`                   |
| n    | `<leader>bm` | `:BufferPick`                               |

---

### Spectre
**Atajos (tuyos):**
| Modo | Tecla        | Acción                                           |
|------|--------------|--------------------------------------------------|
| n    | `<leader>S`  | Abrir/cerrar UI de Spectre                       |
| n    | `<leader>sw` | Buscar palabra bajo cursor (visual abrir)        |
| v    | `<leader>sw` | Buscar selección actual                          |
| n    | `<leader>sp` | Buscar **en archivo actual**                     |

---

### Telescope + sesiones
**Atajos (tuyos):**
| Modo | Tecla        | Acción                      |
|------|--------------|-----------------------------|
| n    | `<leader>ff` | Find files (incluye ocultos)|
| n    | `<leader>fg` | Live grep                   |
| n    | `<leader>fr` | Oldfiles                    |
| n    | `<leader>fb` | Buffers                     |
| n    | `<leader>ss` | Guardar sesión              |
| n    | `<leader>sl` | Listar sesiones (session-lens) |
| n    | `<leader>sd` | Borrar TODAS las sesiones   |

---

### Treesitter
**Uso:** Resaltado, indent, folds y refactor.  
**Atajos (refactor/navigation definidos en tu config):**
| Modo | Tecla     | Acción                        |
|------|-----------|-------------------------------|
| n    | `grr`     | Smart rename                  |
| n    | `gnd`     | Goto definition               |
| n    | `gnD`     | List definitions              |
| n    | `gO`      | TOC de definiciones           |
| n    | `Alt+*`   | Goto **siguiente** usage      |
| n    | `Alt+#`   | Goto **previo** usage         |

---

### Which-key
**Atajos (tuyo):**
| Modo | Tecla        | Acción                                   |
|------|--------------|------------------------------------------|
| n    | `<leader>?`  | Mostrar keymaps **locales del buffer**   |

---

## 4) Solapes / Conflictos detectados

1) **Formateo (`<leader>gf`)**  
   - Definido en Conform y en LSP.  
   - ✅ Ahora: `<leader>gf` = Conform, `<leader>lf` = LSP Format.

2) **Git `<leader>gp`**  
   - En Fugitive = Push.  
   - En Gitsigns ahora se cambió a `<leader>gP` = Preview hunk.

3) **Borrado de sesiones**  
   - `<leader>sd` elimina todas las sesiones sin preguntar.  
   - ⚠️ Recomendación: implementar confirmación o selección interactiva.
