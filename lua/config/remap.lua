vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>bx", ":bw<CR>")
vim.keymap.set("n", "<leader>ka", ":bufdo bd<CR>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

vim.keymap.set("n", "<leader>ls", ":w!<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>")

vim.keymap.set("n", "<leader>ud", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>nN", ":set rnu<CR>")
vim.keymap.set("n", "<leader>nn", ":set rnu!<CR>")

vim.keymap.set("n", "<leader>q", ":wq!<CR>")
