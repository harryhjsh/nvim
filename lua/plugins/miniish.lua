return {
  { "NMAC427/guess-indent.nvim", opts = {} },
  { "echasnovski/mini.surround", opts = {} },
  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    keys = {
      { "<leader>ft", ":Neotree reveal float<CR>", desc = "[t]ree", silent = true },
    },
    opts = {},
  },
}
