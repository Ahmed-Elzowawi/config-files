local keymap = vim.keymap

vim.g.mapleader = ' '
vim.opt.langmap = "ne;jk"

keymap.set("n", "<S-n>", "n")
keymap.set("n", "<S-j>", "N")
keymap.set("n", "<S-e>", "e")

keymap.set("n", "<C-h>", vim.cmd.noh)

keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)

keymap.set("n", "<leader>c", function()
  vim.cmd.w()
  vim.cmd.bd()
end)

keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>h", "<C-w>h")

keymap.set("n", "<leader>x", "<cmd>silent !chmod 744 %<CR>")

-- Window splits
keymap.set("n", "s", "<C-w>")

keymap.set("n", "<UP>", "<cmd>silent :resize +2<CR>")
keymap.set("n", "<Down>", "<cmd>silent :resize -2<CR>")
keymap.set("n", "<RIGHT>", "<cmd>silent :vertical resize +2<CR>")
keymap.set("n", "<LEFT>", "<cmd>silent :vertical resize -2<CR>")

keymap.set("n", "st", "<cmd>60vsplit|:term<CR>")
