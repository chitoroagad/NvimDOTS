return {
	"catppuccin/nvim",
	lazy = false,
	priority = 999,
	name = "catppuccin",
	config = function ()
		vim.cmd('colorscheme catppuccin')
	end,
}
