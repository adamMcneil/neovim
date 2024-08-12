return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      -- require("mason-lspconfig").setup({
      --   ensure_installed = { "lua_ls", "rust_analyzer", "jsonls", "svelte" }
      -- })
      require("mason-lspconfig").setup_handlers {
        function(server_name)
          require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["rust_analyzer"] = function()
        --   require("rust-tools").setup {}
        -- end
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require("lspconfig")
      -- lspconfig.lua_ls.setup({})
      -- lspconfig.rust_analyzer.setup({})
      -- lspconfig.jsonls.setup({})
      -- lspconfig.svelte.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover" })
      vim.keymap.set('n', '<leader>g', vim.lsp.buf.definition, { desc = "go to definition" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code action" })
    end
  },
}
