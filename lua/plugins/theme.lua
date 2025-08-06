return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = {
                light = "mocha",
                dark = "mocha",
            },
            transparent_background = true,
            float = {
                transparent = true,
                solid = false,
            },
        })

        vim.cmd.colorscheme "catppuccin"
    end
}
