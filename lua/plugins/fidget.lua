return {
	"j-hui/fidget.nvim",
	lazy = false,
	priority = 998,
	opts = {
		progress = {
			display = {
				skip_history = false,
			},
			ignore = { "ltex" },
		},
		notification = {
			override_vim_notify = true,
			history_size = 200,
			window = {
				winblend = 0,
			},
		},
	},
}
