if vim.g.vscode
then
    return {}
else
    return {
        {
            "nvim-treesitter/nvim-treesitter",
            build = function()
                require("nvim-treesitter.install").update({ with_sync = true })()
            end,
        }
    }
end
