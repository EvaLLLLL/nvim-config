-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         local tokyonight = require("tokyonight")
--
--         tokyonight.setup({
--             transparent = true,
--             style = "night",
--             cache = true,
--
--             on_highlights = function(hl, c)
--                 local prompt = "#2d3149"
--                 hl.TelescopeNormal = {
--                     bg = c.bg_dark,
--                     fg = c.fg_dark,
--                 }
--                 hl.TelescopeBorder = {
--                     bg = c.bg_dark,
--                     fg = c.bg_dark,
--                 }
--                 hl.TelescopePromptNormal = {
--                     bg = prompt,
--                 }
--                 hl.TelescopePromptBorder = {
--                     bg = prompt,
--                     fg = prompt,
--                 }
--                 hl.TelescopePromptTitle = {
--                     bg = prompt,
--                     fg = prompt,
--                 }
--                 hl.TelescopePreviewTitle = {
--                     bg = c.bg_dark,
--                     fg = c.bg_dark,
--                 }
--                 hl.TelescopeResultsTitle = {
--                     bg = c.bg_dark,
--                     fg = c.bg_dark,
--                 }
--             end,
--         })
--
--         vim.cmd.colorscheme("tokyonight")
--     end
-- }

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

return {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('kanagawa').setup({
            compile = false,  -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = true,    -- do not set background color
            dimInactive = true,    -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {
                    ui = {
                        bg_gutter = "none"
                    }
                } },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            theme = "dragon", -- Load "wave" theme when 'background' option is not set
            background = {
                dark = "wave",
                light = "lotus"
            }
        })
        vim.cmd.colorscheme('kanagawa')
    end
}
