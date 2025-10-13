return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            python = {
              pythonPath = vim.fn.trim(vim.fn.system("uv python find")),
              venvPath = vim.fn.getcwd(),
              venv = ".venv",
            },
          },
        },
      },
    },
  },
}
