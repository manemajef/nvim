return {
  "folke/tokyonight.nvim",
  lazy = false, -- Load the theme but don't apply it
  priority = 1000,
  opts = {
    style = "night", -- Options: storm, moon, night, day
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    -- Don't set colorscheme here - controlled by colorscheme.lua
    -- Custom highlight overrides (only apply when this theme is active)
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "tokyonight",
      callback = function()
        vim.schedule(function()
          local hl = vim.api.nvim_set_hl
          hl(0, "TabLine", { bg = "none" })
          hl(0, "TabLineFill", { bg = "none" })
          hl(0, "StatusLine", { bg = "none" })
          hl(0, "StatusLineNC", { bg = "none" })
          hl(0, "WinBar", { bg = "none" })
          hl(0, "WinBarNC", { bg = "none" })
          hl(0, "WinSeparator", { fg = "#222222", bg = "none" })
          hl(0, "VertSplit", { fg = "#222222", bg = "none" })
        end)
      end,
    })
  end,
}
