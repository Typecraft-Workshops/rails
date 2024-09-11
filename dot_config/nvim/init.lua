require("config.lazy")

local vim = vim

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local run_test = function()
  local current_file = vim.fn.expand('%:p')
  return ":!zellij run -d Down -n 'testing' -- bin/rails test " .. current_file .. "<CR>"
end

vim.keymap.set("n", "<leader>t", run_test(), { desc = "run current file test" })

vim.keymap.set("n", "<leader>a", ":!zellij run -d Down -n 'testing' -- bin/rails test<CR>", { desc = "run all tests" })
