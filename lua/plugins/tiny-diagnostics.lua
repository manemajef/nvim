return {

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    cond = not vim.g.vscode, -- Disable in VSCode
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        underline = true,
        -- signs = true,
        -- update_in_insert = true,
      },
    },
  },
}
