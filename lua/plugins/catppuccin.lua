return {
	"catppuccin/nvim",
	lazy = false,
	priority = 999,
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			-- term_colors = true,
			dim_inactive = {
				enabled = true,
				percentage = 0.4,
			},
			integrations = {
				-- gitsigns = true,
				mason = true,
				nvimtree = true,
				fidget = true,
			},
			compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
