-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = true

-- Connect Neovim clipboard to system clipboard
vim.opt.clipboard = "unnamedplus"
-- vim.lsp.inlay_hint.enable(false)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>tb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<space>tb", ":Telescope file_browser <CR>")
vim.keymap.set("n", "<space>tt", ":Telescope<CR>")
vim.keymap.set("n", "<leader>tc", builtin.commands, { desc = "Telescope commands" })
vim.keymap.set("n", "<leader>tk", builtin.keymaps, { desc = "Telescope keymaps" })
