return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black", "isort" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				json = { "fixjson" },
				sh = { "shfmt" },
				c = { "clang_format" },
				rust = { "rustfmt" },
				markdown = { "prettierd" },
				yaml = { "prettierd" },
			},
		})
	end,
}
