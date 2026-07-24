-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-h>", "<Cmd>tabp<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<A-h>", "<Cmd>tabn<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>fT", function()
  Snacks.terminal(nil, { win = { position = "right" } })
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>ft", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "right" } })
end, { desc = "Terminal (Root Dir)" })
