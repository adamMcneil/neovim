require("vim-options")
require("config.lazy")

vim.keymap.set("n", "<leader>l", ":Lazy<CR>", {desc = "open lazy window"})
