return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ruby_lsp" },
        automatic_installation = true,
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()


      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ruby_lsp.setup({
        capabilities = capabilities,
        cmd = {"/home/chris/.asdf/shims/ruby-lsp"}
      })
    end,

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover documentation LSP" }),
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action LSP" }),
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "GOTO Definition LSP" }),
  }
}
