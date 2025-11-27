local ACTIVE_THEME = "tokyonight"
return {
  {
    "folke/which-key.nvim",
    opts = {
      win = {
        width = 0.9,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ACTIVE_THEME,
    },
  },
}
