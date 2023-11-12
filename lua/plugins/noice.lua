return {
	"folke/noice.nvim",
	events = "VeryLazy",
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
