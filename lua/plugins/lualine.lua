return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = LazyVim.config.icons -- ✅ required for diagnostics symbols

    local opts = {
      options = {
        theme = "auto", -- or "tokyonight", etc.
        globalstatus = true,
        disabled_filetypes = { "dashboard", "alpha", "ministarter", "snacks_dashboard" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          LazyVim.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path() },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }

    -- Transparency fix
    local custom = require("lualine.themes.auto")
    for _, mode in pairs(custom) do
      if mode.c then
        mode.c.bg = "none"
      end
    end
    opts.options.theme = custom

    return opts
  end,
}
