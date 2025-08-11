return {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = function()
        local flash = require("flash")
        return {
            { "s",          mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
            { "S",          mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r",          mode = "o",               function() require("flash").remote() end,     desc = "Remote Flash" },
            { "<C-f>",      mode = { "c" },           function() require("flash").toggle() end,     desc = "Toggle Flash Search" },
            { "<leader>st", flash.treesitter,         desc = "Treesitter" },
            { "<leader>ss", flash.treesitter_search,  desc = "Treesitter Search" },
        }
    end,
    opts = {
        modes = {
            search = {
                enabled = true, -- `/` 自动增强
            },
            char = {
                enabled = true,
                keys = { "f", "F", "t", "T" },
                jump_labels = true,
            },
        },
    },
}
