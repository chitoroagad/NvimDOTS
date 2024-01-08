local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.icons").diagnostic_signs
return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"j-hui/fidget.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"folke/neovim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		"windwp/nvim-autopairs",
	},
	config = function()
		require("neoconf").setup({})
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local lspconfig = require("lspconfig")
		local capabilities = cmp_nvim_lsp.default_capabilities()

		for type, icon in pairs(diagnostic_signs) do
			local hl = "Diagnostic_Signs" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- LUA
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		-- JSON
		lspconfig.jsonls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "json", "jsonc" },
		})

		-- PYTHON
		lspconfig.pyright.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				pyright = {
					-- disableOrganizeImports = false,
					analysis = {
						useLibraryCodeForTypes = true,
						autoSearchPaths = true,
						diagnosticMode = "workspace",
						autoImportCompletions = true,
					},
				},
			},
		})

		-- BASH
		lspconfig.bashls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "sh", "aliasrc" },
		})

		-- DOCKER
		lspconfig.dockerls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- C/C++
		lspconfig.clangd.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			cmd = {
				"clangd",
				"--offset-encoding=utf-16",
			},
		})

		-- TYPESCRIPT
		lspconfig.tsserver.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = {
				"typescript",
			},
			root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
		})

		-- WEBDEV EXTRA
		lspconfig.emmet_ls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = {
				"typescriptreact",
				"javascriptreact",
				"javascript",
				"css",
				"sass",
				"scss",
				"less",
				"html",
			},
		})

		-- Text
		lspconfig.ltex.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = {
				"text",
				"txt",
				"markdown",
			},
			settings = {
				ltex = {
					checkFrequency = "save",
				},
			},
		})
	end,
}
