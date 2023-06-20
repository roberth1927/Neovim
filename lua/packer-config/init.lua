    return require'packer'.startup(function(use)

      
    use 'kdheepak/lazygit.nvim'
    use 'tpope/vim-fugitive'
    --administrador packer
    use 'wbthomason/packer.nvim'




    --lsp - 0icon to definitions
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'

   

  

    --me permite instalr lenguajes muy rapido
    use 'williamboman/nvim-lsp-installer'

  
    use 'zane-/cder.nvim'

    --Sintaxys
    use 'nvim-treesitter/nvim-treesitter-refactor'
    
    
    -- indent line
    use 'lukas-reineke/indent-blankline.nvim'

    -- comentar seleciona  + gc
    use "tpope/vim-commentary"
    use "tpope/vim-obsession"
    
       
    -- auto session
    use {'rmagatti/auto-session',
    config = function() require("auto-session").setup {} end
  }
  
  
  ----------------------------------------------------------------

      
    -- blade de laravel
    use "jwalton512/vim-blade"
    
    
  -- Notificaciones
  use {'nvim-treesitter/nvim-treesitter'}
  use  { 'rcarriga/nvim-notify' ,
  config = function ()
      require("notify").setup({
          background_colour = "#FFFFFF",
      });
   end
  }


    --Buscador
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


       -- barra inferior - icons
       use 'nvim-lualine/lualine.nvim' 


     --close tegs
     use {
      "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
        }


    --temas
   
    use "EdenEast/nightfox.nvim"
    use 'overcache/NeoSolarized'
    use {'folke/tokyonight.nvim' }
  


        use 'navarasu/onedark.nvim'
        use 'ellisonleao/gruvbox.nvim'



     --explorador de archivos
     use 'kyazdani42/nvim-tree.lua'

         -- git
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
      require('gitsigns').setup()
     end
     }



  
    --para navegar entre los buffer
    use 'romgrk/barbar.nvim'


      -- Autocompletion plugin
      use 'hrsh7th/nvim-cmp'
      use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
      use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
      use 'L3MON4D3/LuaSnip' -- Snippets plugin
      use 'hrsh7th/cmp-path'
      use 'hrsh7th/cmp-buffer'
  





---------------------------------------------------------


end)

