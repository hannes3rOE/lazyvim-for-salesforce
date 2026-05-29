-- In deiner lazy.nvim plugin config, z.B. plugins/formatting.lua

return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = {
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                -- Apex via prettier-plugin-apex
                apex = { "prettier" },
                -- Salesforce Metadata XML
                xml = { "prettier" },
            },

            -- Format on save
            --format_on_save = {
            --timeout_ms = 3000,
            --lsp_fallback = true,
            --},

            -- Prettier-spezifische Optionen
            formatters = {
                prettier = {
                    -- Falls du ein globales prettier verwenden willst
                    -- (sinnvoll wenn kein node_modules lokal vorhanden)
                    require_cwd = false,
                    options = {
                        ft_parsers = {
                            apex = "apex",
                            xml = "xml",
                        },
                    },
                },
            },
        },

        keys = {
            {
                "<leader>cf",
                function()
                    require("conform").format({ async = true, lsp_fallback = true })
                end,
                desc = "Format buffer",
            },
        },
    },
}
