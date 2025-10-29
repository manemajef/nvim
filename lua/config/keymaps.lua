-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
vim.cmd("command! W w")
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })
-- map("n", "<leader><space>", "<Nop>", { noremap = true, silent = true })
map("n", "D", '"_d', { noremap = true, silent = true })
map("v", "D", '"_d', { noremap = true, silent = true })
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>tb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<space>tb", ":Telescope file_browser <CR>")
vim.keymap.set("n", "<space>tt", ":Telescope<CR>")
vim.keymap.set("n", "<leader>tc", builtin.commands, { desc = "Telescope commands" })
vim.keymap.set("n", "<leader>tk", builtin.keymaps, { desc = "Telescope keymaps" })
vim.keymap.set("n", "<leader>td", builtin.diagnostics, { desc = "Telescope keymaps" })
