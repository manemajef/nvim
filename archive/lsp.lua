return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Ruff LSP (formatter + linter)
      lspconfig.ruff_lsp.setup({
        on_attach = function(client, bufnr)
          -- Enable formatting
          client.server_capabilities.documentFormattingProvider = true

          -- Format on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end,
        init_options = {
          settings = {
            args = {},
          },
        },
      })

      -- BasedPyright (type checker)
      lspconfig.basedpyright.setup({
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })
    end,
  },
}
