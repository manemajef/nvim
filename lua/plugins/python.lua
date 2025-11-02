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
              },
            },
          },
        },

        -- Keep ruff for formatting/linting
        ruff = {},
      },
    },
  },
}
