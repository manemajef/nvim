-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

vim.cmd("command! W w")

-- Insert mode shortcuts
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Delete without copying
map("n", "D", '"_d', { noremap = true, silent = true })
map("v", "D", '"_d', { noremap = true, silent = true })

-- Resize window
map("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })

-- reload
map("n", "<leader>rr", function()
  -- Re-source init.lua (reloads your config)
  dofile(vim.env.MYVIMRC)
  print("✅ Reloaded init.lua")
end, { desc = "Reload init.lua" })
