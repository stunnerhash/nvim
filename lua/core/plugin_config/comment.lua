require('nvim_comment').setup()
vim.api.nvim_set_keymap('n', '<D-/>', '<Plug>Comment', {})
vim.api.nvim_set_keymap('i', '<D-/>', '<Plug>Comment', {})
vim.api.nvim_set_keymap('v', '<D-/>', '<Plug>Comment', {})

vim.api.nvim_set_keymap('n', '<C-/>', '<Plug>Comment', {})
vim.api.nvim_set_keymap('i', '<C-/>', '<Plug>Comment', {})
vim.api.nvim_set_keymap('v', '<C-/>', '<Plug>Comment', {})

