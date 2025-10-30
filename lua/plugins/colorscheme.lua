local ACTIVE_THEME = "tokyonight"
return {
  -- { "ellisonleao/gruvbox.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "maxmx03/solarized.nvim" },
  -- { import = "plugins.themes.tokyonight" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ACTIVE_THEME,
    },
  },
  -- { import = "plugins.themes." .. ACTIVE_THEME },
}
