return {
  "craftzdog/solarized-osaka.nvim",
  branch = "osaka",
  lazy = false,  -- Load but don't apply
  priority = 1000,
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require("solarized-osaka").setup(opts)
    -- Don't set colorscheme here - controlled by colorscheme.lua
  end,
}
