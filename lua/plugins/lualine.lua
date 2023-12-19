local config = function()
	local theme = require("lualine.themes.catppuccin")
	theme.normal.c.bg = nil

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "filename" },
			lualine_c = { "branch", "diff", "diagnostics" },
			lualine_x = { "filetype" },
            lualine_y = {
                {
                    function()
                        local lsps = vim.lsp.get_active_clients({ bufnr = vim.fn.bufnr() })
                        local icon = require("nvim-web-devicons").get_icon_by_filetype(
                            vim.api.nvim_buf_get_option(0, "filetype")
                        )
                        if lsps and #lsps > 0 then
                            local names = {}
                            for _, lsp in ipairs(lsps) do
                                table.insert(names, lsp.name)
                            end
                            return string.format("%s %s", table.concat(names, ", "), icon or "")
                        else
                            return icon or ""
                        end
                    end,
                    on_click = function()
                        vim.api.nvim_command("LspInfo")
                    end,
                    color = function()
                        local _, color = require("nvim-web-devicons").get_icon_cterm_color_by_filetype(
                            vim.api.nvim_buf_get_option(0, "filetype")
                        )
                        return { fg = color }
                    end,
                },
            },
			lualine_z = { "progress" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
    dependencies = { "kyazdani42/nvim-web-devicons" }
}
