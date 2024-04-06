local keymap = vim.keymap

local config = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")
	telescope.setup({
		pickers = {
			find_files = {
				theme = "dropdown",
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				hidden = true,
			},
		},
		defaults = {
			path_display = { "truncate", "smart" },
			mappings = {
				i = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
			},
		},
	})

	-- set colors
	local colors = require("catppuccin.palettes").get_palette()
	local TelescopeColor = {
		TelescopeMatching = { fg = colors.flamingo },
		TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

		TelescopePromptPrefix = { bg = colors.surface0 },
		TelescopePromptNormal = { bg = colors.surface0 },
		TelescopeResultsNormal = { bg = colors.mantle },
		TelescopePreviewNormal = { bg = colors.mantle },
		TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
		TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
		TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
		TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
		TelescopeResultsTitle = { fg = colors.mantle },
		TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
	}

	for hl, col in pairs(TelescopeColor) do
		vim.api.nvim_set_hl(0, hl, col)
	end

	-- telescope.load_extension("fzf")
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
	},
	config = config,
	keys = {
		keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
	},
}
