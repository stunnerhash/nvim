vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.relativenumber = true

-- Enable Backspace key to delete characters in insert mode
-- vim.api.nvim_set_keymap('i', '<BS>', '<C-h>', { noremap = true, silent = true })

-- Set C++ file type
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.cpp",
  callback = function()
    vim.bo.filetype = "cpp"
  end,
})

-- Set leader key to space if it's not already set
vim.g.mapleader = ' '

-- Map <Leader>yy to yank to the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>yy', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>yy', '"+y', { noremap = true, silent = true })

-- Map <Leader>pp to paste from the system clipboard
vim.api.nvim_set_keymap('n', '<Leader>pp', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>pp', '"+p', { noremap = true, silent = true })


-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.ai = true
vim.opt.si = true

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers
vim.wo.number = true

-- experimental: start
vim.opt.scrolloff = 999

-- Show line numbers
vim.o.number = true

-- Show line numbers relative to the current line
vim.o.relativenumber = true

-- Scroll the code instead of cursor 
vim.o.mouse = 'a'

-- Customize the format of the line numbers
vim.o.numberwidth = 2
vim.o.signcolumn = 'yes'

-- Show file stats
vim.o.ruler = true

vim.cmd('let &t_SI="\\e[6 q"')
vim.cmd('let &t_EI="\\e[2 q"')

-- Search Recursively
vim.opt.path:append{'**'}
vim.opt.wildignore:append{'*/node_modules/*'}

-- Map Tab to increase indentation in normal mode
-- vim.api.nvim_set_keymap('n', '<Tab>', '>>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<Tab>', '<leader>gv>>', { noremap = true, silent = true })

-- Map Shift-Tab to decrease indentation in normal mode
-- vim.api.nvim_set_keymap('n', '<S-Tab>', '<<', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<S-Tab>', '<leader>gv<<', { noremap = true, silent = true })

-- Blink cursor on error instead of beeping
-- vim.o.visualbell = true

-- Shortcut to split vertically
vim.api.nvim_set_keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true, silent = true })

-- Shortcut to split horizontally
vim.api.nvim_set_keymap('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })

-- Encoding
vim.o.encoding = 'utf-8'

-- Highlighting of corresponding bracket turned off
vim.o.showmatch = false
-- Whitespace
vim.o.wrap = true
vim.o.textwidth = 79
vim.o.formatoptions = 'tcqrn1'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftround = false

-- Cursor motion
vim.o.scrolloff = 999
vim.o.backspace = 'indent,eol,start'

-- Move up/down editor lines
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

-- Allow hidden buffers
vim.o.hidden = true

-- Rendering
vim.o.ttyfast = true

-- Status bar
vim.o.laststatus = 2

-- Last line
vim.o.showmode = true

-- Searching
-- vim.api.nvim_set_keymap('n', '<leader><space>', ':let @/=''<cr>', { noremap = true, silent = true })
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.showmatch = true

  -- Map jj to exit insert mode and enter normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })

-- Formatting
vim.api.nvim_set_keymap('n', '<leader>q', 'gqip', { noremap = true, silent = true })
-- experimental: end


