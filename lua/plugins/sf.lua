return {
    "xixiaofinland/sf.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/overseer.nvim",
        "ibhagwan/fzf-lua",
    },
    config = function()
        require("sf").setup({ terminal = "overseer" })
    end,
}
