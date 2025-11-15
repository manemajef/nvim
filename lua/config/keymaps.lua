-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

vim.cmd("command! W w")

-- Insert mode shortcuts (work in both VSCode and Neovim)
map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Delete without copying (work in both VSCode and Neovim)
map("n", "D", '"_d', { noremap = true, silent = true })
map("v", "D", '"_d', { noremap = true, silent = true })

-- Neovim-only keymaps
if not vim.g.vscode then
  -- Resize window
  map("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
  map("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })

  -- Run Python in terminal
  map("n", "<leader>rp", function()
    vim.cmd("w") -- save file
    local file = vim.fn.expand("%")
    Snacks.terminal("python3 " .. file, { cwd = LazyVim.root(), keep = true })
  end, { desc = "Run Python in Snacks Terminal" })
end
