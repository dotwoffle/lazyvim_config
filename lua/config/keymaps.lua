-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-h>", "<Cmd>tabp<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<A-h>", "<Cmd>tabn<cr>", { desc = "Next Tab" })
