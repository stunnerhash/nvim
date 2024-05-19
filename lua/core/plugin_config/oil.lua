require("oil").setup()
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "oil",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
  end,
})
