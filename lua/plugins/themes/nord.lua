return {
  "shaunsingh/nord.nvim",
  lazy = false,  -- Load but don't apply
  priority = 1000,
  config = function()
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = true
    vim.g.nord_italic = false
    vim.g.nord_uniform_diff_background = true
    -- Don't call require("nord").set() here - controlled by colorscheme.lua
  end,
}
