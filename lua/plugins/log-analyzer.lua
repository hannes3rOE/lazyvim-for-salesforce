return {
  "PreziosiRaffaele/apex-log-analyzer.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "ApexLogTree",
  keys = {
    { "<leader>lt", "<cmd>ApexLogTree<cr>", desc = "Apex Log Tree" },
  },
  config = function()
    require("apex-log-analyzer").setup()
  end,
}
