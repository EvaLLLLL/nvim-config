return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local function on_my_attach(bufnr)
            local api = require "nvim-tree.api"

            api.config.mappings.default_on_attach(bufnr)

            vim.keymap.set('n', '<C-f>', api.tree.toggle, {})
        end

        require("nvim-tree").setup {
            sort = {
                sorter = "case_sensitive",
            },
            on_attach = on_my_attach,
        }
    end,
}
