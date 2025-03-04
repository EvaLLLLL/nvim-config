return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local tokyonight = require("tokyonight")

        tokyonight.setup({
            transparent = true,
            style = "night",
            cache = true,

            on_highlights = function(hl, c)
                local prompt = "#2d3149"
                hl.TelescopeNormal = {
                    bg = c.bg_dark,
                    fg = c.fg_dark,
                }
                hl.TelescopeBorder = {
                    bg = c.bg_dark,
                    fg = c.bg_dark,
                }
                hl.TelescopePromptNormal = {
                    bg = prompt,
                }
                hl.TelescopePromptBorder = {
                    bg = prompt,
                    fg = prompt,
                }
                hl.TelescopePromptTitle = {
                    bg = prompt,
                    fg = prompt,
                }
                hl.TelescopePreviewTitle = {
                    bg = c.bg_dark,
                    fg = c.bg_dark,
                }
                hl.TelescopeResultsTitle = {
                    bg = c.bg_dark,
                    fg = c.bg_dark,
                }
            end,
        })

        vim.cmd.colorscheme("tokyonight")
    end
}

-- return {
--     'sainnhe/everforest',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.g.everforest_enable_italic = true
--         vim.g.everforest_transparent_background = 2
--         vim.g.everforest_enable_italic = 1
--         vim.g.everforest_cursor = 'aqua'
--         vim.g.everforest_ui_contrast = 'high'
--         vim.g.everforest_current_word = 'high contrast background'
--         vim.cmd.colorscheme('everforest')
--     end
-- }
