return {
	"aznhe21/actions-preview.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("actions-preview").setup({})
		vim.keymap.set(
			{ "n", "v" },
			"<leader>ca",
			require("actions-preview").code_actions,
			{ noremap = true, silent = true }
		)
	end,
}
