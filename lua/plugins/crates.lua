local keymap = require("util.keymapper").mapvimkey
local opts = { noremap = true, silent = true, buffer = bufnr }

return {
	"saecki/crates.nvim",
	ft = { "rust", "toml" },
	config = function()
		local crates = require("crates")
		crates.setup({})
		crates.show()
		keymap("<leader>rcu", ":Crates upgrade_all_crates<CR>", "n", opts)
	end,
}
