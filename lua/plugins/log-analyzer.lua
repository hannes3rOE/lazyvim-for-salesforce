return {
    "PreziosiRaffaele/apex-log-analyzer.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "ApexLogTree",
    config = function()
        require("apex-log-analyzer").setup()
    end,
}
