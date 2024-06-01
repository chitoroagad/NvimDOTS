return {
	"folke/noice.nvim",
	event = "VeryLazy",
	config = function()
		require("noice").setup({
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
		})

		-- set colors
		-- local colors = require("catppuccin.palettes").get_palette()
		-- local NoiceColor = {
		-- 	NoiceCmdlinePopup = { bg = colors.mantle, fg = colors.mantle },
		-- 	NoiceCmdlinePopupBorder = { bg = colors.mantle, fg = colors.mantle },
		-- 	NoicePopup = { bg = colors.mantle, fg = colors.mantle },
		-- 	NoicePopupBorder = { bg = colors.mantle, fg = colors.mantle },
		-- 	NoicePopupMenu = { bg = colors.mantle, fg = colors.mantle },
		-- 	NoiceMini = { bg = colors.mantle, fg = colors.mantle },
		-- }

		-- for hl, col in pairs(NoiceColor) do
		-- 	vim.api.nvim_set_hl(0, hl, col)
		-- end
	end,
	dependencies = {
		{
			"MunifTanjim/nui.nvim",
			lazy = false,
		},
		-- {
		-- 	"rcarriga/nvim-notify",
		-- 	lazy = false,
		-- 	config = function()
		-- 		require("notify").setup({
		-- 			render = "wrapped-compact",
		-- 			stages = "slide",
		-- 		})
		-- 	end,
		-- },
	},
}
