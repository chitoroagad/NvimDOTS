local set = vim.keymap.set

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	opts.desc = "Show docs"
	set("n", "K", vim.lsp.buf.hover, opts)
	opts.desc = "Jump to definition"
	set("n", "<leader>gd", vim.lsp.buf.definition, opts) -- peak definition
	opts.desc = "Jump to declaration"
	set("n", "<leader>gD", vim.lsp.buf.declaration, opts) -- go to definition
	opts.desc = "Code actions"
	-- set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
	-- opts.desc = "Show implementations"
	set("n", "<leader>gi", vim.lsp.buf.implementation, opts) -- go to implementation
	opts.desc = "Smart rename"
	set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
	opts.desc = "Show line diagnostics in float window"
	set("n", "<leader>dl", vim.diagnostic.open_float, opts) -- show  diagnostics for buffer
	opts.desc = "Show all diagnostics in telescope"
	set("n", "<leader>dt", "<cmd>Telescope diagnostics<CR>", opts) -- show  diagnostics for buffer
	opts.desc = "Jump to next diagnostic in buffer"
	set("n", "<leader>dn", vim.diagnostic.goto_next, opts) -- show diagnostics for line
	opts.desc = "Jump to prev diagnostic in buffer"
	set("n", "<leader>dp", vim.diagnostic.goto_prev, opts) -- jump to prev diagnostic in buffer
end

return M
