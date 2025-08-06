vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "netrw" then
        vim.cmd("bd") -- close netrw buffer
    else
        vim.cmd("Ex")
    end
end, { desc = "Toggle netrw" })

vim.keymap.set("n", "<leader>ls", ":w!<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q!<CR>", { desc = "Quit file" })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>i", function()
    local term_buf = nil
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
            term_buf = buf
            break
        end
    end

    if term_buf then
        -- Close the window showing terminal if it's visible
        for _, win in ipairs(vim.api.nvim_list_wins()) do
            if vim.api.nvim_win_get_buf(win) == term_buf then
                vim.api.nvim_win_close(win, true)
                return
            end
        end
        -- If not visible, open in horizontal split again
        vim.cmd("belowright split")
        vim.api.nvim_win_set_buf(0, term_buf)
    else
        -- No terminal exists, create a new one
        vim.cmd("belowright 15split | terminal")
    end
end, { desc = "Toggle terminal" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- Normal mode: - jumps to matching pair
vim.keymap.set("n", "-", "%", { noremap = true, desc = "Jump to matching pair" })

-- Operator-pending mode: d-, c-, y-, etc.
vim.keymap.set("o", "-", "%", { noremap = true })

-- Visual mode: v- selects to matching pair
vim.keymap.set("x", "-", "%", { noremap = true })
