local keymap = vim.keymap

vim.g.mapleader = ' '
vim.opt.langmap = "ne;jk"

keymap.set("n", "<S-n>", "n")
keymap.set("n", "<S-j>", "N")
keymap.set("n", "<S-e>", "e")
keymap.set("n", "<leader>k", vim.cmd.NvimTreeToggle)
