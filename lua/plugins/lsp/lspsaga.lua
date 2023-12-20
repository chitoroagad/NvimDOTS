return {
	"glepnir/lspsaga.nvim",
	lazy = false,
	config = function()
		local saga = require("lspsaga")
		saga.setup({
			move_in_saga = { prev = "<C-k>", next = "<C-j>" },
			finder_action_keys = {
				open = "<CR>",
			},
			definition_action_keys = {
				edit = "<CR>",
			},
			symbol_in_winbar = {
				enable = false,
			},
			lightbulb = {
				virtual_text = false,
			},
		})
	end,
}
