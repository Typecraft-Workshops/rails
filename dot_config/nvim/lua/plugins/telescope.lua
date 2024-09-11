return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
   local builtin = require('telescope.builtin')

   vim.keymap.set('n', '<C-p>', builtin.find_files, {})
   vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files TELESCOPE" })
  end,
}
