return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = {
		sort_by = "case_sensitive",
		view = {
			width = 25,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			custom = { '.git', '.idea', '.vscode' },
		},
	}

}
