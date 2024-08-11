local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

M.config = function()
  require("nvim-treesitter").setup()

  local configs = require("nvim-treesitter.configs")

  configs.setup({
      -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
  })
end

return { M }
