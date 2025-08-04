-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local map = vim.keymap.set
-- map("n", "", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
-- vim.keymap.del("n", "<C-Left>")
-- vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })i'm a genius, i'm a genius:)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to sys clipboard", remap = true })
