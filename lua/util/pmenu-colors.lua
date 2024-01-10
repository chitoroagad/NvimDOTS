local M = {}
local dark_grey = "#22252A"
local darker_grey = "#282C34"
local light_grey = "#C5CDD9"
local mid_grey = "#7E8294"
local baby_blue = "#82AAFF"
local light_purple = "#C792EA"
local flesh = "#EED8DA"
local light_green = "#C3E88D"
local light_yellow = "#FFE082"
local light_lilac = "#EADFF0"
local very_light_yellow = "#F5EBD9"
local light_baby_blue = "#DDE5F5"
local light_turquoise = "#D8EEEB"
local crimson = "#B5585F"
local lime = "#9FBD73"
local gold = "#D4BB6C"
local purple = "#A377BF"
local dark_gold = "#D4A959"
local blue = "#6C8ED4"
local turquoise = "#58B5A8"

M.setup = function()
	-- Customization for Pmenu
	vim.api.nvim_set_hl(0, "PmenuSel", { bg = darker_grey, fg = "NONE" })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = light_grey, bg = dark_grey })

	vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = mid_grey, bg = "NONE", strikethrough = true })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = baby_blue, bg = "NONE", bold = true })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = baby_blue, bg = "NONE", bold = true })
	vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = light_purple, bg = "NONE", italic = true })

	vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = flesh, bg = crimson })
	vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = flesh, bg = crimson })
	vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = flesh, bg = crimson })

	vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = light_green, bg = lime })
	vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = light_green, bg = lime })
	vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = light_green, bg = lime })

	vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = light_yellow, bg = gold })
	vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = light_yellow, bg = gold })
	vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = light_yellow, bg = gold })

	vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = light_lilac, bg = purple })
	vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = light_lilac, bg = purple })
	vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = light_lilac, bg = purple })
	vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = light_lilac, bg = purple })
	vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = light_lilac, bg = purple })

	vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = light_grey, bg = mid_grey })
	vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = light_grey, bg = mid_grey })

	vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = very_light_yellow, bg = dark_gold })
	vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = very_light_yellow, bg = dark_gold })
	vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = very_light_yellow, bg = dark_gold })

	vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = light_baby_blue, bg = blue })
	vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = light_baby_blue, bg = blue })
	vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = light_baby_blue, bg = blue })

	vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = light_turquoise, bg = turquoise })
	vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = light_turquoise, bg = turquoise })
	vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = light_turquoise, bg = turquoise })
end

return M
