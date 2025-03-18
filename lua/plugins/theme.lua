if vim.g.vscode
then
    return {}
else
    return {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local tokyonight = require("tokyonight")

            tokyonight.setup({
                style = "night",
                transparent = true,
                cache = true,
            })

            vim.cmd.colorscheme("tokyonight")
        end
    }
end
