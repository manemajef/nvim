return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  --  lazy = false,  -- Load but don't apply
  -- priority = 1000,
  opts = {
    flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
    transparent_background = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
}
