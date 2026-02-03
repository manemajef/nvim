return {
  -- VimTeX
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      -- PDF viewer for macOS
      vim.g.vimtex_view_method = "skim"

      -- Compiler settings
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "build", -- Put aux files in build/ directory
        options = {
          "-pdf",
          "-lualatex",
          "-interaction=nonstopmode",
          "-synctex=1",
          "-file-line-error",
        },
      }

      -- Disable overfull/underfull warnings
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
      }

      -- Auto-compile on save
      vim.g.vimtex_compiler_latexmk_engines = {
        _ = "-lualatex",
      }
    end,
    keys = {
      { "<leader>lc", "<cmd>VimtexCompile<cr>", desc = "LaTeX Toggle Compile" },
      { "<leader>lv", "<cmd>VimtexView<cr>", desc = "LaTeX View PDF" },
      { "<leader>lk", "<cmd>VimtexStop<cr>", desc = "LaTeX Stop" },
      { "<leader>le", "<cmd>VimtexErrors<cr>", desc = "LaTeX Errors" },
      { "<leader>lx", "<cmd>VimtexClean<cr>", desc = "LaTeX Clean Aux" },
    },
  },

  -- LaTeX snippets (Castel-style)
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      require("luasnip-latex-snippets").setup({
        use_treesitter = false,
      })
      require("luasnip").filetype_extend("tex", { "tex" })
    end,
    ft = "tex",
  },

  -- Optional: texlab LSP for better completion
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {},
      },
    },
  },
}
