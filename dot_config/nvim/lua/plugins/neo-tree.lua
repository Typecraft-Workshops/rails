return {
  "nvim-neo-tree/neo-tree.nvim",
   dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },

  vim.keymap.set('n', '<C-n>', ':Neotree toggle left<CR>', {})
}
