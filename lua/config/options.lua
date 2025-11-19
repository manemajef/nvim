-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = true
vim.filetype.add({
  extension = {
    json = "jsonc",
    json5 = "jsonc",
  },
})
vim.g.autoformat = true
vim.opt.clipboard = "unnamedplus"

-- vim.lsp.inlay_hint.enable(true)
