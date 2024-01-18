local on_attach = require("util.lsp").on_attach
-- local cmp_nvim_lsp = require("cmp_nvim_lsp")
-- local capabilities = cmp_nvim_lsp.default_capabilities()

return {
	"mrcjkb/rustaceanvim",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		"windwp/nvim-autopairs",
	},
	version = "^3",
	ft = { "rust" },
	config = function()
		require("neoconf").setup({})
		vim.g.rustaceanvim = {
			server = {
				on_attach = on_attach,
				-- capabilities = capabilities,
			},
		}
	end,
}
