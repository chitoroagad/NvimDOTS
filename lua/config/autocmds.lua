-- autoformat on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		local null_ls = vim.lsp.get_active_clients({ name = "null-ls" })
		local rust_analyzer = vim.lsp.get_active_clients({ name = "rust_analyzer" })
		if vim.tbl_isempty(null_ls) and vim.tbl_isempty(rust_analyzer) then
			return
		end

		vim.lsp.buf.format({})
	end,
})
