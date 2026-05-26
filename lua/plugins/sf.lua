return {
    "xixiaofinland/sf.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/overseer.nvim", -- add this
        "ibhagwan/fzf-lua",
    },
    config = function()
        require("sf").setup({
            terminal = "overseer", -- key setting
        })
    end,
}
