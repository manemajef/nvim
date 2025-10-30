return {
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "quarto", "markdown" },
    config = function()
      local quarto = require("quarto")
      quarto.setup()

      vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, {
        silent = true,
        noremap = true,
        desc = "Preview Quarto document",
      })
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = {
        style = "",
        border = "hide",
        disable_background = { "all" },
        language_icon = false,
        language_info = false,
        above = "",
        below = "",
        sign = false,
      },
    },
  },
}
