return {
    "folke/tokyonight.nvim",
    opts = {
      style = "night"
    },
    config = function(_, opts)
        require("tokyonight").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyonight-moon]]
    end,
}
