local on_attach = require("util.lsp").on_attach

return {
	"mrcjkb/rustaceanvim",
	version = "^3",
	ft = { "rust" },
	config = function()
		vim.g.rustaceanvim = {
			server = {
				on_attach = on_attach,
			},
		}
	end,
}
