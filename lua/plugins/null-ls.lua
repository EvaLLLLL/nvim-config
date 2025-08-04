return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "nvimtools/none-ls.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        local mason_null_ls = require("mason-null-ls")

        -- Set up null-ls with desired formatters
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier, -- JS/TS/HTML/CSS
                null_ls.builtins.formatting.black,    -- Python
            },
        })

        -- Ensure formatters are auto-installed
        mason_null_ls.setup({
            ensure_installed = {
                "prettier",
                "black",
                "lua_ls",
                "gopls",
                "rust_analyzer",
                "pyright",
            },
            automatic_installation = true,
        })

        -- Format command: prefer null-ls, fallback to LSP
        local null_ls_filetypes = {
            javascript = true,
            typescript = true,
            typescriptreact = true,
            python = true,
        }

        vim.keymap.set("n", "<leader>lf", function()
            local ft = vim.bo.filetype
            vim.lsp.buf.format({
                filter = function(client)
                    if null_ls_filetypes[ft] then
                        return client.name == "null-ls"
                    end
                    return client.name ~= "null-ls"
                end,
            })
        end, { desc = "Format code" })

        -- Optional: format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function()
                local ft = vim.bo.filetype
                vim.lsp.buf.format({
                    filter = function(client)
                        if null_ls_filetypes[ft] then
                            return client.name == "null-ls"
                        end
                        return client.name ~= "null-ls"
                    end,
                    timeout_ms = 1000,
                })
            end,
        })
    end,
}
