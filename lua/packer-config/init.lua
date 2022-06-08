return require'packer'.startup(function(use)	

    --administrador packer
    use 'wbthomason/packer.nvim'

    --temas
    use 'ellisonleao/gruvbox.nvim'

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
    -- Notificaciones
    use 'rcarriga/nvim-notify'

    --para navegar entre los buffer
    use 'romgrk/barbar.nvim'

    -- barra inferior - icons
    use 'nvim-lualine/lualine.nvim' 
    use 'kyazdani42/nvim-web-devicons'


    --me permite instalr lenguajes muy rapido
    use 'williamboman/nvim-lsp-installer'

    --Buscador
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --Sintaxys
     use {'nvim-treesitter/nvim-treesitter'}
     use 'nvim-treesitter/nvim-treesitter-refactor'


end)

