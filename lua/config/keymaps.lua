local keymap = vim.keymap

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.showmode = false

-- Directory Nav
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>", opts)

-- Pane Nav
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)

-- Identing
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Mark Management
opts.desc = "Delete All Marks"
keymap.set("n", "<leader>dm", ":delm!<CR>", opts)
