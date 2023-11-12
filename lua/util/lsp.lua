local keymap = vim.keymap

local M = {}

M.on_attach = function(client, bufnr)
		local opts = { noremap = true, silent = true, buffer = bufnr }

		keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
		keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
		keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
		keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
		keymap.set("n", "ca", "<cmd>Lspsaga code_action<CR>", opts)
		keymap.set("n", "rn", "<cmd>Lspsaga rename<CR>", opts)
		keymap.set("n", "D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
		-- vim.keymap.set("n", "d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
		keymap.set("n", "pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
		keymap.set("n", "nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
		keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

        if client.name == "pyright" then
            keymap.set("n", "<leader>oi", "<cmd>PyrightOrganizeImports<CR>", opts)
        end
	end


return M
