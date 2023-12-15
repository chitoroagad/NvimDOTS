return {
	"folke/noice.nvim",
	event = "VeryLazy",
	lazy = false,
	opts = {},
	dependencies = {
		{
			"MunifTanjim/nui.nvim",
			lazy = false,
		},
		-- {
		-- 	"rcarriga/nvim-notify",
		-- 	config = function ()
		-- 		require("notify").setup({
		-- 			background_color = "#000000"
		-- 		})
		-- 	end,
		-- },
	},
}
