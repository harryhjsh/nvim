return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
    delay = 0,
    plugins = {
      presets = {
        motions = false,
      },
    },
    spec = {
      {
        "<leader>g",
        group = "[g]o",
      },
      {
        "<leader>c",
        group = "[c]ode",
      },
      {
        "<leader>f",
        group = "[f]iles",
      },
    },
  },
}
