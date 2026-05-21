return {
  "xixiaofinland/sf.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("sf").setup()
  end,
}
