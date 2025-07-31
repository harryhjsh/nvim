local lsp_servers = {}

return {
  -- nvim config lsp stuff
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  { "j-hui/fidget.nvim", opts = {} },
  { "mason-org/mason.nvim", opts = {} },
  { "mason-org/mason-lspconfig.nvim" },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      require("mason-lspconfig").setup({
        handlers = {
          function(server_name)
            local server = lsp_servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
            require("lspconfig")[server_name].setup(server)
          end,
        },
      })
    end,
    keys = {
      {
        "<leader>gd",
        require("telescope.builtin").lsp_definitions,
        desc = "[d]efinition",
      },
      {
        "<leader>cr",
        vim.lsp.buf.rename,
        desc = "[r]ename",
      },
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        desc = "code [a]ction",
      },
      {
        "<leader>ck",
        vim.lsp.buf.hover,
        desc = "hover",
      },
      {
        "K",
        vim.lsp.buf.hover,
        desc = "lsp hover",
      },
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    opts = {},
  },
}
