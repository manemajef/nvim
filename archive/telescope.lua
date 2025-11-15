return {
  {
    "nvim-telescope/telescope.nvim",
    enabled = false,
    cmd = "Telescope",
    keys = {
      {
        "<leader>tf",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Telescope find files",
      },
      {
        "<leader>tg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Telescope live grep",
      },
      {
        "<leader>tb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Telescope buffers",
      },
      {
        "<leader>th",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Telescope help tags",
      },
      {
        "<leader>tc",
        function()
          require("telescope.builtin").commands()
        end,
        desc = "Telescope commands",
      },
      {
        "<leader>tk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc = "Telescope keymaps",
      },
      {
        "<leader>td",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Telescope diagnostics",
      },
      { "<space>tb", "<cmd>Telescope file_browser<CR>", desc = "Telescope file browser" },
      { "<space>tt", "<cmd>Telescope<CR>", desc = "Telescope main menu" },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { width = 0.9, height = 0.85 },
        sorting_strategy = "ascending",
      },
    },
  },
}
