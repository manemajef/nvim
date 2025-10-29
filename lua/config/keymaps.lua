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
-- Telescope mappings (require lazily)
map("n", "<leader>tf", function()
  require("telescope.builtin").find_files()
end, { desc = "Telescope find files" })
map("n", "<leader>tg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Telescope live grep" })
map("n", "<leader>tb", function()
  require("telescope.builtin").buffers()
end, { desc = "Telescope buffers" })
map("n", "<leader>th", function()
  require("telescope.builtin").help_tags()
end, { desc = "Telescope help tags" })
map("n", "<leader>tc", function()
  require("telescope.builtin").commands()
end, { desc = "Telescope commands" })
map("n", "<leader>tk", function()
  require("telescope.builtin").keymaps()
end, { desc = "Telescope keymaps" })
map("n", "<leader>td", function()
  require("telescope.builtin").diagnostics()
end, { desc = "Telescope diagnostics" })

-- Optional: file browser and main menu
-- map("n", "<space>tb", ":Telescope file_browser<CR>", { desc = "Telescope file browser" })
map("n", "<space>tt", ":Telescope<CR>", { desc = "Telescope main menu" })
