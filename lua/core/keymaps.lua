-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Buffers navigation
vim.keymap.set('n', '<leader>bb', '<C-^>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>')
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')

-- Quickfix list navigation
vim.keymap.set('n', '<leader>cn', ':cnext<CR>')
vim.keymap.set('n', '<leader>cp', ':cprevious<CR>')
vim.keymap.set('n', '<leader>co', ':copen<CR>')
vim.keymap.set('n', '<leader>cd', ':cclose<CR>')

-- Location list navigation
vim.keymap.set('n', '<leader>ln', ':lnext<CR>')
vim.keymap.set('n', '<leader>lp', ':lprevious<CR>')
vim.keymap.set('n', '<leader>lo', ':lopen<CR>')
vim.keymap.set('n', '<leader>ld', ':lclose<CR>')

--- Insert mode mappings
vim.api.nvim_set_keymap('i', '<C-h>', '<C-o>:TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<C-o>:TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<C-o>:TmuxNavigateUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<C-o>:TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- Map <Leader>yy to yank to the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', { noremap = true, silent = true })

-- Map <Leader>pp to paste from the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>p', '"+p', { noremap = true, silent = true })

-- Shortcut to split vertically
vim.api.nvim_set_keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true, silent = true })

-- Shortcut to split horizontally
vim.api.nvim_set_keymap('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })

-- Map kj to exit insert mode and enter normal mode
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':close<CR>', { noremap = true, silent = true })

-- Move up/down editor lines
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':w<CR>', { noremap = true })
