return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Use the modern vim.lsp.config API (Neovim 0.11+)
      local configs = require("lspconfig.configs")

      -- Setup ruff
      if not configs.ruff then
        configs.ruff = {
          default_config = {
            cmd = { "ruff", "server" },
            filetypes = { "python" },
            root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "setup.py", "setup.cfg", ".git"),
            settings = {
              configuration = {
                lint = {
                  ignore = { "E501", "F841", "D" },
                },
              },
            },
          },
        }
      end
      require("lspconfig").ruff.setup({})

      -- Setup basedpyright
      require("lspconfig").basedpyright.setup({
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "basic",
            },
          },
          python = (function()
            local venv_python = vim.fn.getcwd() .. "/.venv/bin/python"
            local python_path = vim.fn.filereadable(venv_python) == 1 and venv_python or vim.fn.exepath("python")

            return {
              pythonPath = python_path,
            }
          end)(),
        },
      })
    end,
  },
}
