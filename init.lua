require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map ("n", "<leader>t", ":NvimTreeToggle<Enter>", {desc = "toggle file tree"}) 
map ("n", "<leader>f", ":NvimTreeFocus<Enter>", {desc = "focus file tree"}) 

local builtin = require("telescope.builtin")
map ("n", "<leader>n", builtin.find_files, {desc = "find file"}) 

