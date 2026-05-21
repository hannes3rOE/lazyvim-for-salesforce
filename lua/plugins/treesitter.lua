return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs", -- tells LazyVim which module to call setup on
  opts = {
    ensure_installed = { "apex", "soql", "sosl", "sflog" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
