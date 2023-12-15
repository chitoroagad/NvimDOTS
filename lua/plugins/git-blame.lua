return {
	"f-person/git-blame.nvim",
	lazy = false,
	config = function()
		local opts = { noremap = true, silent = true, buffer = bufnr }
		local keymapper = require("util.keymapper").mapvimkey
		keymapper("<leader>GG", ":GitBlameToggle<CR>", "n", opts)

		vim.g.gitblame_message_template = "Blame:<author> • <summary>"
	end,
}
