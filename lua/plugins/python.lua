return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable pyright (LazyVim's default)
        pyright = false,

        -- Enable basedpyright for type checking
        basedpyright = {
          enabled = true,
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                reportUnusedImport = "none",
                reportUnusedVariable = "none",
              },
            },
          },
          capabilities = {
            offsetEncoding = { "utf-8" },
          },
        },

        -- Keep ruff for formatting/linting
        ruff = {},
      },
    },
  },
}
