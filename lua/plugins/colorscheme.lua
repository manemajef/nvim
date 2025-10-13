-- All themes in themes/*.lua are auto-loaded by Lazy
-- This file just sets which one is active
-- Since plugins/ loads after plugins.themes/, this will override any theme settings

-- local ACTIVE_THEME = "tokyonight"
local ACTIVE_THEME = "tokyonight"
return {
  -- Gruvbox theme plugin (add other simple themes here if needed)
  { "ellisonleao/gruvbox.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "maxmx03/solarized.nvim" },
  -- Set the active colorscheme for LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ACTIVE_THEME,
    },
  },
}
