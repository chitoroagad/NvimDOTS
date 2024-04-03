return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
			python = { "ruff" },
			javascript = { "biomejs" },
			typescript = { "biomejs" },
			json = { "biomejs" },
			sh = { "shellcheck" },
			c = { "cpplint" },
			dockerfile = { "hadolint" },
		}

		-- customise linters
		local flake8 = require("lint").linters.flake8
		table.insert(flake8.args, "--max-line-length")
		table.insert(flake8.args, "120")
	end,
}
