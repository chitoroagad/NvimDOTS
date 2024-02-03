local set = vim.keymap.set

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	set("n", "<leader>fd", "Lspsaga finder", opts) -- go to definition
	set("n", "K", vim.lsp.buf.hover, opts)
	set("n", "<leader>gd", vim.lsp.buf.definition, opts) -- peak definition
	set("n", "<leader>gD", vim.lsp.buf.declaration, opts) -- go to definition
	set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
	set("n", "<leader>gi", vim.lsp.buf.implementation, opts) -- go to implementation
	set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
	set("n", "<leader>do", vim.diagnostic.open_float, opts) -- show  diagnostics for buffer
	set("n", "<leader>dt", "<cmd>Telescope diagnostics<CR>", opts) -- show  diagnostics for buffer
	set("n", "<leader>dn", vim.diagnostic.goto_next, opts) -- show diagnostics for line
	set("n", "<leader>dp", vim.diagnostic.goto_prev, opts) -- jump to prev diagnostic in buffer
end

return M
