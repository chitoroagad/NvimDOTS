-- return {
-- 	"nvimtools/none-ls.nvim",
-- 	dependencies = { "nvim-lua/plenary.nvim" },
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	config = function()
-- 		local null_ls = require("null-ls")
-- 		null_ls.setup({
-- 			debug = true,
-- 			sources = {
-- 				null_ls.builtins.formatting.stylua,
-- 				null_ls.builtins.formatting.black,
-- 				null_ls.builtins.formatting.prettierd,
-- 				null_ls.builtins.formatting.fixjson,
-- 				null_ls.builtins.formatting.shfmt,
-- 				null_ls.builtins.formatting.clang_format,
-- 				null_ls.builtins.formatting.rustfmt,
--
-- 				null_ls.builtins.diagnostics.luacheck,
-- 				null_ls.builtins.diagnostics.flake8,
-- 				--                 .with({
-- 				-- 	args = {
-- 				-- 		"--format",
-- 				-- 		"default",
-- 				-- 		"--stdin-display-name",
-- 				-- 		"$FILENAME",
-- 				-- 		"-",
-- 				-- 		"--max-line-length",
-- 				-- 		"120",
-- 				-- 	},
-- 				-- }),
-- 				null_ls.builtins.diagnostics.eslint_d,
-- 				null_ls.builtins.diagnostics.shellcheck,
-- 				null_ls.builtins.diagnostics.hadolint,
-- 				null_ls.builtins.diagnostics.cpplint,
-- 			},
-- 		})
-- 	end,
-- }

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				json = { "fixjson" },
				sh = { "shfmt" },
				c = { "clang_format" },
				rust = { "rustfmt" },
			},
		})
	end,
}
