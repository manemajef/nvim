return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Disable inlay hints globally
      inlay_hints = {
        enabled = false,
      },
      auto_hover = false,
      -- Add other general LSP settings here
    },
  },
}
