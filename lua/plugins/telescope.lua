return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    config = function()
      require("telescope").setup({})

      local pkg_icon = { icon = "", color = "orange" }
      local ws_icon = { icon = "", color = "yellow" }

      require("which-key").add({
        -- {
        --   "<leader>fp",
        --   "<cmd>Telescope autoscope list_packages<cr>",
        --   desc = "[p]ackages",
        --   icon = ws_icon,
        -- },

        {
          "<leader><leader>",
          "<cmd>Telescope autoscope find_files<cr>",
          mode = "n",
          desc = "find files in package",
        },
        {
          "<leader>ff",
          "<cmd>Telescope autoscope find_files<cr>",
          mode = "n",
          desc = "[f]ind",
          icon = pkg_icon,
        },
        {
          "<leader>fg",
          "<cmd>Telescope autoscope live_grep<cr>",
          desc = "live [g]rep",
          icon = pkg_icon,
        },

        {
          "<leader>fa",
          group = "[a]ll (packages)",
          icon = ws_icon,
        },
        {
          "<leader>fap",
          "<cmd>Telescope autoscope list_packages<cr>",
          desc = "[p]ackages",
          icon = ws_icon,
        },
        {
          "<leader>faf",
          "<cmd>Telescope find_files<cr>",
          desc = "[f]ind",
          icon = ws_icon,
        },
        {
          "<leader>fag",
          "<cmd>Telescope live_grep<cr>",
          desc = "live [g]rep",
          icon = ws_icon,
        },
      })
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
        "harryhjsh/autoscope.nvim",
        -- dir = "C:/dev/github/autoscope/",
      },
      { "folke/which-key.nvim" },
    },
  },
}
