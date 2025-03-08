if vim.g.vscode
then
    return {}
else
    return {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.prettier,
                },
            })

            vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format code" })
        end,
    }
end
