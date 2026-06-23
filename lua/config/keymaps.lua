-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ig", function()
    require("sf").retrieve("-c")
end, { desc = "Retrieve this file from org" })

map("n", "<leader>iG", function()
    require("sf").list_md_to_retrieve()
end, { desc = "Retrieve metadata from Org..." })

map("n", "<leader>ip", function()
    require("sf").save_and_push("-c")
end, { desc = "Deploy this file from org" })

map("n", "<leader>id", function()
    require("sf").diff_in_org()
end, { desc = "Diff file against org" })

map("n", "<leader>it", function()
    require("sf").run_all_tests_in_this_file_with_coverage()
end, { desc = "Run tests in this file" })

map("n", "<leader>ir", function()
    require("sf").run_anonymous()
end, { desc = "Run this buffer anonymous" })

map("n", "<leader>il", function()
    require("sf").pull_log()
end, { desc = "Pull logs from org" })

map("n", "<leader>io", function()
    require("sf").set_global_target_org()
end, { desc = "Set Global Target Org..." })

map("n", "<leader>iL", function()
    local log_path = vim.api.nvim_buf_get_name(0)
    require("apex-log-analyzer").generate_tree(log_path)
end, { desc = "Show log tree" })

map("n", "<leader>o", function()
    require("overseer").toggle()
end, { desc = "Show log tree" })

map("n", "<leader>ic", function()
    require("apex-coverage").get_coverage()
end, { desc = "Show code coverage" })

map("n", "<leader>iC", function()
    require("apex-coverage").clean_coverage()
end, { desc = "Clean code coverage" })

map("t", "<C-Space>", "<C-\\><C-n><C-w>w", { desc = "Exit terminal" })

map("n", "<C-Space>", "<C-w>w", { desc = "Focus next window" })
