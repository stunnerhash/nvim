require('competitest').setup({
  testcases_directory = './testcases',
  input_name = 'input',
  output_name = 'output',
  auto_open = true,
  runner_ui = {
    interface = "split",
  },
  maximum_time = 2500,
  split_ui = {
    position = "right",
    relative_to_editor = true,
    total_width = 0.5,
    vertical_layout = {
      { 1, "tc" },
      { 4, { { 2, "so" }, { 1, "eo" } } },
      { 2, { { 1, "si" }, { 1, "se" } } },
    },
    total_height = 0.4,
    horizontal_layout = {
      { 2, "tc" },
      { 3, { { 1, "so" }, { 1, "si" } } },
      { 3, { { 1, "eo" }, { 1, "se" } } },
    },
  },
  testcases_use_single_file = false,
  save_current_file = true,
  save_all_files = false,

  compile_directory = "./",
  compile_command = {
    cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
  },
  running_directory = "./",
  run_command = {
    cpp = { exec = "./$(FNOEXT)" },
  },

  template_file = {
    cpp = "~/Code/contests/.vscode/starter.cpp",
  },
  companion_port = 27121,
	receive_print_message = true,
	evaluate_template_modifiers = false,
	date_format = "%c",
	received_files_extension = "cpp",
	received_problems_path = "$(CWD)/$(PROBLEM).$(FEXT)",
	received_problems_prompt_path = false,
	received_contests_directory = "$(CWD)",
	received_contests_problems_path = "$(PROBLEM).$(FEXT)",
	received_contests_prompt_directory = true,
	received_contests_prompt_extension = true,
	open_received_problems = true,
	open_received_contests = true,
	replace_received_testcases = false,
})

vim.api.nvim_set_keymap('n', '<C-\'>', ':CompetiTest run<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>crr', ':CompetiTest run<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cf', ':CompetiTest run_file<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':CompetiTest run_all<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cta', ':CompetiTest add_testcase<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cte', ':CompetiTest edit_testcase ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ctd', ':CompetiTest delete_testcase ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>crt', ':CompetiTest receive testcases<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>crp', ':CompetiTest receive problem<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>crc', ':CompetiTest receive contest<CR>', { noremap = true, silent = true })

