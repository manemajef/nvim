return {
  -- {
  --   "MeanderingProgrammer/render-markdown.nvim",
  --   opts = {
  --     code = {
  --       enabled = true,
  --       sign = false,
  --       width = "full",
  --       conceal_delimiters = false,
  --       language_name = false,
  --       disabled_background = true,
  --       style = "language",
  --       above = "",
  --       bellow = "",
  --       language_info = false,
  --       languages = false,
  --       language_icon = false,
  --     },
  --   },
  -- },

  -- Marksman with diagnostics disabled
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
        },
      },
    },
  },
}
