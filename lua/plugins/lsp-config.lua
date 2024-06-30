return {
  -- LSP package management
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- A bridge between mason.nvim and nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
          ensure_installed = { "lua_ls", "pyright" },
      }
    end
  },
  -- Configs for neovim lsp clients
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      --lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      vim.keymap.set("n", 'K', vim.lsp.buf.hover, {})
    end
  }
}
