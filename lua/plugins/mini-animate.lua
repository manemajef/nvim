return {
  {
    "nvim-mini/mini.animate",
    version = false, -- always use latest
    enabled = false,
    event = "VeryLazy", -- load when the UI is ready
    config = function()
      require("mini.animate").setup({
        scroll = {
          enable = true,
          timing = require("mini.animate").gen_timing.linear({ duration = 100 }),
          subscroll = require("mini.animate").gen_subscroll.equal({ max_output_steps = 60 }),
        },
        cursor = { enable = true },
        open = { enable = false },
        close = { enable = false },
        resize = { enable = false },
      })
    end,
  },
}
