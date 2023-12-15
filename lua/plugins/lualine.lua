local config = function()
	local theme = require("lualine.themes.catppuccin")
	theme.normal.c.bg = nil
    local git_blame = require("gitblame")
    vim.g.gitblame_display_virtual_text = 0


	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
		},
		sections = {
        lualine_c = { { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
			lualine_a = {
				-- {
				-- 'buffers',
				-- },
			},
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
