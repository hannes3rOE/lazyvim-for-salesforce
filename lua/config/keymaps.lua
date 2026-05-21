-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ig", function()
    require("sf").retrieve("-c")
end, { desc = "Retrieve this file from org" })

map("n", "<leader>ip", function()
    require("sf").save_and_push("-c")
end, { desc = "Deploy this file from org" })

map("n", "<leader>id", function()
    require("sf").diff_in_org()
end, { desc = "Deploy this file from org" })
