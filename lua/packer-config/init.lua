return require'packer'.startup(function()	

    --administrador packer
    use 'wbthomason/packer.nvim'

    --temas
    use 'ellisonleao/gruvbox.nvim'

    --iconos
    use 'kyazdani42/nvim-web-devicons'

    --lsp
    use 'neovim/nvim-lspconfig'

    --explorador de archivos
    use 'kyazdani42/nvim-tree.lua'

    -- Autocompletion plugin
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'rcarriga/nvim-notify'
    use 'nvim-treesitter/nvim-treesitter-refactor'

    --para navegar entre los buffer
    use 'romgrk/barbar.nvim'

    use 'nvim-lualine/lualine.nvim' 

    --me permite instalr lenguajes muy rapido
    use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind-nvim'

    --Buscador
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --Sintaxys
     use {'nvim-treesitter/nvim-treesitter'}

end)

