return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		local opts = { noremap = true, silent = true, buffer = bufnr }
		local keymap = require("util.keymapper").mapvimkey
		keymap("<leader>mp", ":MarkdownPreview", "n", opts)
	end,
}
