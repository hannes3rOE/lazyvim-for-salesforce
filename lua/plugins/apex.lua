return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      apex_ls = {
        apex_jar_path = vim.fn.stdpath("data")
          .. "/mason/packages/apex-language-server/extension/dist/apex-jorje-lsp.jar",
        apex_enable_semantic_errors = true,
      },
    },
  },
}
