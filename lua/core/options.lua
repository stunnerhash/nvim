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


vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers
vim.wo.number = true

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

-- Blink cursor on error instead of beeping
-- vim.o.visualbell = true
-- Encoding
vim.o.encoding = 'utf-8'

-- Highlighting of corresponding bracket turned off
vim.o.showmatch = false
-- Whitespace
vim.o.wrap = true
vim.o.textwidth = 79
vim.o.formatoptions = 'tcqrn1'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.ai = true
vim.opt.si = true

-- Cursor motion
vim.o.scrolloff = 999
vim.o.backspace = 'indent,eol,start'


-- Allow hidden buffers
vim.o.hidden = true

-- Rendering
vim.o.ttyfast = true

-- Status bar
vim.o.laststatus = 2

-- Last line
vim.o.showmode = true

-- Searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.showmatch = true


