return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,  -- Load but don't apply
  priority = 1000,
  opts = {
    flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
    transparent_background = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    -- Don't set colorscheme here - controlled by colorscheme.lua
  end,
}
