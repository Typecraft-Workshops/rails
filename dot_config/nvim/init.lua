require("config.lazy")

local vim = vim

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local run_test = function()
  local current_file = vim.fn.expand('%:p')
  local test_string = "silent !zellij run -d Down -n 'testing' -- bin/rails test " .. current_file
  vim.api.nvim_command(test_string)
end

local run_all_tests = function()
  local test_string = "silent !zellij run -d Down -n 'testing' -- bin/rails test"
  vim.api.nvim_command(test_string)
end

vim.api.nvim_create_user_command('RunTest', run_test, {})
vim.api.nvim_create_user_command('RunAllTests', run_all_tests, {})

vim.keymap.set("n", "<leader>t", ":RunTest<CR>", { desc = "run current file test" })
vim.keymap.set("n", "<leader>a", ":RunAllTests<CR>", { desc = "run all tests" })
