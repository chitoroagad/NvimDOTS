return {
	"mbbill/undotree",
	keys = { "<leader>ut", "<cmd>UndotreeToggle<CR>", desc = "Undotree" },
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
