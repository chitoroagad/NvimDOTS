local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)
	vim.g.nvim_tree_delete_proc = "trash"

	-- custom mappings
	vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		git = {
			enable = true,
		},
		sort_by = "case_sensitive",
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
			special_files = {
				"Cargo.toml, README.md",
			},
		},
		filters = {
			custom = { "\\.git", "\\.idea", "\\.vscode" },
			git_ignored = true,
			dotfiles = false,
		},
		on_attach = my_on_attach,
	},
}
