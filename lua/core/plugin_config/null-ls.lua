local null_ls = require("null-ls")

null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
	},
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set("n", "==", vim.lsp.buf.format, { desc = "Format buffer" })
