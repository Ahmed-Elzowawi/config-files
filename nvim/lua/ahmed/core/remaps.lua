local keymap = vim.keymap

vim.g.mapleader = ' '
vim.opt.langmap = "ne;jk"

keymap.set("n", "<S-n>", "n")
keymap.set("n", "<S-j>", "N")
keymap.set("n", "<S-e>", "e")

keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)

keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>h", "<C-w>h")
