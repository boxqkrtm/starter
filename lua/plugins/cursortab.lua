return {
  {
    "leonardcser/cursortab.nvim",
    lazy = false,
    build = "cd server && go build",
    config = function()
      require("cursortab").setup({
        behavior = {
          idle_completion_delay = 500,
          text_change_debounce = 500,
          cursor_prediction = {
            enabled = true,
            auto_advance = true,
            proximity_threshold = 2,
          },
        },
        provider = {
          type = "sweep",
          url = "http://localhost:11434",
          model = "sweepai/sweep-next-edit:latest",
          completion_timeout = 20000,
        },
      })
    end,
  },
}
