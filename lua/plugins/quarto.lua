-- plugins/quarto.lua
return {
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "quarto", "markdown" }, -- load only when editing Quarto or Markdown
    config = function()
      local quarto = require("quarto")
      quarto.setup()

      -- Keymaps
      vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, {
        silent = true,
        noremap = true,
        desc = "Preview Quarto document",
      })
    end,
  },
}
