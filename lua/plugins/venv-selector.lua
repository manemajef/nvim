return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- optional: automatically detect and activate the closest venv
      auto_refresh = true,
    },
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select virtualenv" },
    },
  },
}
