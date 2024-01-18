return {
	"m4xshen/hardtime.nvim",
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	opts = {
		disabled_filetypes = { "lazy", "fugitive", "NvimTree", "noice", "lspinfo", "help" },
	},
	event = { "BufEnter" },
}
