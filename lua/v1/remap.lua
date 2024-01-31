vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "^")
vim.keymap.set("n", "<C-l>", "$")
vim.keymap.set("n", "<C-b>", "%")
vim.keymap.set("v", "<C-b>", "%")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>bx", ":bw<CR>")
vim.keymap.set("n", "<leader>ka", ":bufdo bd<CR>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("n", "<leader>sv", ":Vex<CR>")
vim.keymap.set("n", "<leader>sh", ":Sex<CR>")
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

vim.keymap.set("n", "cw", "ciw")
vim.keymap.set("n", "cb", "cib")
vim.keymap.set("n", "yw", "yiw")
vim.keymap.set("n", "yb", "yib")
vim.keymap.set("n", "dw", "diw")
vim.keymap.set("n", "db", "dib")
vim.keymap.set("n", "vw", "viw")
vim.keymap.set("n", "vb", "vib")

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>")

