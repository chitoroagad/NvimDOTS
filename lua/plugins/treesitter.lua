local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"markdown_inline",
			"json",
			"yaml",
			"html",
			"css",
			"bash",
			"lua",
			"dockerfile",
			"python",
		},
		autoinstall = true,
		highlight = {
			enable = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	lazy = false,
	build = ":TSUpdate",
	config = config,
}
