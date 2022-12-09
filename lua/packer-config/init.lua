return require'packer'.startup(function(use)	

    --administrador packer
    use 'wbthomason/packer.nvim'

    --temas
    use 'ellisonleao/gruvbox.nvim'
    use "EdenEast/nightfox.nvim"
    use 'overcache/NeoSolarized'
    use {'folke/tokyonight.nvim' }

    --lsp - 0icon to definitions
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'

    --explorador de archivos
    use 'kyazdani42/nvim-tree.lua'

    -- Autocompletion plugin
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    -- git
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
      require('gitsigns').setup()
     end
     }
    use 'kdheepak/lazygit.nvim'
    use 'tpope/vim-fugitive'

    -- Notificaciones
    use 'rcarriga/nvim-notify'

    --para navegar entre los buffer
    use 'romgrk/barbar.nvim'

    -- barra inferior - icons
    use 'nvim-lualine/lualine.nvim' 
    use 'kyazdani42/nvim-web-devicons'
    
    --galaxyline
     --use { 'ecosse3/galaxyline.nvim', after = 'nvim-gps', event = "BufWinEnter" }
  --   use { 'ecosse3/galaxyline.nvim', after = 'nvim-gps', config = "require('plugins.galaxyline')", event = "BufWinEnter" }
--use 'glepnir/galaxyline.nvim'
--use 'Avimitin/nerd-galaxyline'
 --    use 'Avimitin/neovim-deus'

    --me permite instalr lenguajes muy rapido
    use 'williamboman/nvim-lsp-installer'

    --Buscador
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'zane-/cder.nvim'

    --Sintaxys
     use {'nvim-treesitter/nvim-treesitter'}
     use 'nvim-treesitter/nvim-treesitter-refactor'

     --close tegs
     use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    }
       -- indent line
     use 'lukas-reineke/indent-blankline.nvim'

     -- blade de laravel
    use "jwalton512/vim-blade"

    -- comentar seleciona  + gc
    use "tpope/vim-commentary"
    use "tpope/vim-obsession"


end)

