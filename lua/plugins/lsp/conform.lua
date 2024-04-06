return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- python = { "ruff_format" },
				javascript = { "biome" },
				typescript = { "biome" },
				javascriptreact = { "biome" },
				typescriptreact = { "biome" },
				css = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				sh = { "shfmt" },
				c = { "clang_format" },
				rust = { "rustfmt" },
				markdown = { { "prettierd", "prettier" } },
				yaml = { { "prettierd", "prettier" } },
			},
			format_on_save = {
				lsp_fallback = true,
				async = true,
				timeout = 1000,
			},
		})
	end,
}
