local debugging_signs = require("util.icons").debugging_signs
local keymap = require("util.keymapper").mapvimkey
local opts = { noremap = true, silent = true, buffer = bufnr }

return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		for name, sign in pairs(debugging_signs) do
			sign = type(sign) == "table" and sign or { sign }
			vim.fn.sign_define(
				"Dap" .. name,
				{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
			)
		end

		dapui.setup()

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
			vim.cmd("NvimTreeClose")
		end

		dap.listeners.after.event_terminated["dapui_config"] = function()
			dapui.close()
		end

		dap.listeners.after.before_event_exited["dapui_config"] = function()
			dapui.close()
		end

		vim.api.nvim_create_user_command("OpenDapUi", function()
			local widgets = require("dap.ui.widgets")
			local sidebar = widgets.sidebar(widgets.scopes)
			sidebar.open()
		end, {})

		keymap("<leader>db", ":DapToggleBreakpoint<CR>", "n", opts)
		keymap("<leader>dus", ":OpenDapUi", "n", opts)
	end,
}
