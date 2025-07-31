return {
  "NMAC427/guess-indent.nvim",
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
      { "<leader>gt", ":Neotree reveal float<CR>", desc = "[t]ree", silent = true },
    },
    opts = {},
  },
}
