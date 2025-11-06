return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "night" },
	},
	{
		"tiagovla/tokyodark.nvim",
		opts = {},
		config = function(_, opts)
			require("tokyodark").setup(opts)
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
