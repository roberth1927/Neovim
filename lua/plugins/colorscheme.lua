return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                styles = {
                    sidebars = "dark",
                    floats = "dark",
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = { italic = true },
                    variables = { italic = true },
                },
            })
            -- vim.cmd[[colorscheme tokyonight]]
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            -- ¡Esta es la opción nativa para la transparencia!
            transparent_mode = "hard", 
        },
    },
    {
        "dracula/vim",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd[[colorscheme dracula]]
        end,
    },

	{
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd('colorscheme nightfly')
        end,
    },




	{
		'uloco/bluloco.nvim',
		lazy = false,
		priority = 1000,
		dependencies = { 'rktjmp/lush.nvim' },
		config = function()
			--vim.cmd[[colorscheme bluloco]]
		end,
	},
	
	{ 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                term_colors = true,
                styles = {
                    comments = { "italic" },
                    keywords = { "italic" },
                    functions = { "italic" },
                    variables = { "italic" },
                },
            })
          --  vim.cmd[[colorscheme catppuccin-mocha]]
        end,
    }
}
