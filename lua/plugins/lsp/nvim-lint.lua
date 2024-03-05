return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
			python = { "flake8" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			json = { "jsonlint" },
			sh = { "shellcheck" },
			c = { "cpplint" },
		}

		-- customise linters
		local flake8 = require("lint").linters.flake8
		flake8.args = {
			"format=default",
			"max-line-length=120",
			"stdin-display-name=$FILENAME",
		}
	end,
}
