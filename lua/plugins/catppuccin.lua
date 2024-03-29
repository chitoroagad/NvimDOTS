return {
	"catppuccin/nvim",
	lazy = false,
	priority = 999,
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
			dim_inactive = {
				enabled = true,
			},
			integrations = {
				notify = true,
				gitsigns = true,
				mason = true,
				noice = true,
				nvimtree = true,
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
