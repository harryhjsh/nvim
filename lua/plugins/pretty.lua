-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup()
--     vim.cmd.colorscheme("tokyonight-storm")
--   end,
-- }

return {
  dir = "C:/dev/github/poimandres.nvim/",
  -- "olivercederborg/poimandres.nvim",
  priority = 1000,
  config = function ()
    require("poimandres").setup({})
    vim.cmd.colorscheme("poimandres")
  end
}
