return {
  "nvim-mini/mini.pairs",
  opts = {
    -- keep your other settings if any
  },
  config = function(_, opts)
    require("mini.pairs").setup(opts)

    -- add custom <C-l> mapping
    vim.keymap.set("i", "<C-l>", function()
      local col = vim.fn.col(".")
      local line = vim.fn.getline(".")
      local next_char = line:sub(col, col)
      if next_char:match("[%)%]%}%'\"]") then
        return "<Right>"
      else
        return "<C-l>"
      end
    end, { expr = true, silent = true })
  end,
}
