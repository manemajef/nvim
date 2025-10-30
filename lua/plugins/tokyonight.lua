return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_highlights = function(hl, c)
      -- Fine-grained transparency or custom highlights
      hl.TabLine = { bg = "none" }
      hl.TabLineFill = { bg = "none" }
      hl.StatusLine = { bg = "none" }
      hl.StatusLineNC = { bg = "none" }
      hl.WinBar = { bg = "none" }
      hl.WinBarNC = { bg = "none" }
      hl.WinSeparator = { fg = c.border or "#222222", bg = "none" }
      hl.VertSplit = { fg = c.border or "#222222", bg = "none" }
    end,
  },
}
