return {
  {
    "leonardcser/cursortab.nvim",
    build = "cd server && go build",
    lazy = false,
    config = function()
      require("cursortab").setup({
        provider = {
          type = "sweep",
          url = "http://localhost:11434",
          completion_path = "/v1/completions",
          model = "sweepai/sweep-next-edit",
        },
      })
    end,
  },
}
