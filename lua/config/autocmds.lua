-- autoformat on save
-- local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	group = lsp_fmt_group,
-- 	callback = function()
-- 		local null_ls = vim.lsp.get_active_clients({ name = "null-ls" })
-- 		if vim.tbl_isempty(null_ls) then
-- 			return
-- 		end
--
-- 		vim.lsp.buf.format({})
-- 	end,
-- })

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.bufnr})
    end,
})
