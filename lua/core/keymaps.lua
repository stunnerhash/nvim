-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Insert mode mappings
vim.api.nvim_set_keymap('i', '<C-h>', '<C-o>:TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<C-o>:TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<C-o>:TmuxNavigateUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<C-o>:TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- Map <Leader>yy to yank to the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', { noremap = true, silent = true })

-- Map <Leader>pp to paste from the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>pp', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>pp', '"+p', { noremap = true, silent = true })


-- Shortcut to split vertically
vim.api.nvim_set_keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true, silent = true })

-- Shortcut to split horizontally
vim.api.nvim_set_keymap('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })


-- Map jj to exit insert mode and enter normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':close<CR>', { noremap = true, silent = true })

-- Move up/down editor lines
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':w<CR>', { noremap = true })
