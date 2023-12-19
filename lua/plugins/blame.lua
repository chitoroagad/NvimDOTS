local keymap = require("util.keymapper").mapvimkey
local opts = { noremap = true, silent = true, buffer = bufnr }

return {
	"FabijanZulj/blame.nvim",
    lazy = false,
	config = function()
		keymap("<leader>GB", ":ToggleBlame<CR>", "n", opts)
	end,
}
