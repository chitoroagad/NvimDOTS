return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		routes = {
			{
				view = "notify",
				filter = { event = "msg_showmode" },
			},
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
			progress = {
				enabled = true,
				view = "mini",
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
		},
		views = {
			mini = {
				size = { height = "auto", width = "auto", max_height = 4 },
			},
			cmdline_popup = {
				border = {
					style = "none",
					padding = { 2, 3 },
				},
				filter_options = {},
				win_options = {
					winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
				},
			},
		},
	},
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
