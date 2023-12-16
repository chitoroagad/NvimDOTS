return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			ensure_installed = {
				"tsserver",
				"lua_ls",
				"html",
				"cssls",
				"pyright",
				"rust_analyzer",
				"efm",
				"dockerls",
				"bashls",
				"clangd",
				"jsonls",
				"emmet_ls",
				"letx_ls",

				"luacheck",
				"stylua",
				"flake8",
				"black",
				"eslint",
				"prettier_d",
				"fixjson",
				"shellcheck",
				"shfmt",
				"hadolint",
				"cpplint",
				"clangformat",
			},
		})

		mason_lspconfig.setup({
			-- ensure_installed = {
			--     "tsserver",
			--     "lua_ls",
			--     "html",
			--     "cssls",
			--     "pyright",
			--     "rust_analyzer",
			--     "efm",
			--     "dockerls",
			--     "bashls",
			--     "clangd",
			--     "jsonls",
			--     "emmet_ls",
			--
			--     -- "luacheck",
			--     -- "stylua",
			--     -- "flake8",
			--     -- "black",
			--     "eslint",
			--     -- "prettier_d",
			--     -- "fixjson",
			--     -- "shellcheck",
			--     -- "shfmt",
			--     -- "hadolint",
			--     -- "cpplint",
			--     -- "clangformat",
			-- },
			automatic_installation = true,
		})
	end,
}
