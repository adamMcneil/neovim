return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<Enter>", { desc = "toggle file tree" })
    vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<Enter>", { desc = "focus file tree" })
  end,
}
