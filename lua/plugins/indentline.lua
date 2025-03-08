if vim.g.vscode
then
    return {}
else
    return {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            -- local highlight = { "GRAY" }
            --
            -- local hooks = require "ibl.hooks"
            -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            --     vim.api.nvim_set_hl(0, "GRAY", { fg = "#525975" })
            -- end)

            require("ibl").setup {
                indent = { char = "▏" },
                scope = { enabled = false }
            }
        end
    }
end
