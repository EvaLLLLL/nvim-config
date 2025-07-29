-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             transparent_background = true,
--             background = {
--                 dark = "mocha"
--             }
--         })
--
--         vim.cmd.colorscheme "catppuccin"
--     end
-- }

return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            transparent = true,
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            }
        })

        vim.cmd.colorscheme "kanagawa-dragon"
    end
}
