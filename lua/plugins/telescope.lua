return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    config = function()
      require("telescope").setup({})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons" },
      {
        dir = "C:/dev/github/telescope-autoscope",
        name = "telescope-autoscope.nvim",
        config = function()
          require("autoscope").setup()
        end,
      },
    },
    keys = {
      {
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        mode = "n",
        desc = "[f]ind",
      },
      {
        "<leader><leader>",
        "<cmd>Telescope autoscope find_files<cr>",
        desc = "find files in package",
      },
    },
  },
}
