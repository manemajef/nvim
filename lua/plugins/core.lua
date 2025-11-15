local ACTIVE_THEME = "tokyonight"
return {
  -- {
  --   "rafamadriz/friendly-snippets",
  --   opts = {
  --     exclude = { "markdown" },
  --   },
  -- },
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
  -- { "MeanderingProgrammer/render-markdown.nvim", enabled = false },
}
