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
      {
        "<leader>b",
        group = "[b]uffers",
      },
      {
        "<leader>bb",
        "<cmd>b#<cr>",
        desc = "previous [b]uffer",
      },
      {
        "<leader>ba",
        "<cmd>Telescope buffers<cr>",
        desc = "[a]ll buffers",
      },
      {
        "<leader>bd",
        "<cmd>bd<cr>",
        desc = "[d]elete buffer",
      },
    },
  },
}
