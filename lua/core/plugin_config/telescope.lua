local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.buffers, {})
vim.keymap.set('n', '<Space>fs', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.grep_string, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})

-- Import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- Import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- Configure telescope
telescope.setup({
  -- Configure custom mappings (optional)
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next,     -- move to next result
        ["<C-q>"] = actions.close,
      },
      n = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next,     -- move to next result
        ["<C-q>"] = actions.close,
      }
    },
  },

  -- Configure file ignoring (optional)
  file_ignore_patterns = { "node_modules/.*" },
})
